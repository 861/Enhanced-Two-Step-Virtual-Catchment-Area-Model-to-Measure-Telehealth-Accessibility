import polars as pl
import os
import glob

csv_list = glob.glob(
    "Results/Broadband_Speed_Merged_Min_Cookcounty_15mi_split/Broadband_Speed_Merged_Min_Cookcounty_15mi_*.csv")
print(len(csv_list))

df = pl.read_csv(
    "Results/Broadband_Speed_Merged_Min_Cookcounty_15mi.csv").lazy()
df.fetch().head()


for csv_i in csv_list:
    _, name = os.path.split(csv_i)
    file_name = "/home/scratch/z1854460/E2SVCA_Broadband_Speed/"+name+"_weight.csv"
    if not os.path.exists(file_name):
        df_i = pl.read_csv(csv_i).lazy()
        temp_df = df_i.join(df, on="geoid", how="cross")
        out_df = temp_df.select(
            [
                # pl.col("geoid").alias("orig"),
                # pl.col("geoid_right").alias("dest"),
                pl.col("id").alias("orig"),
                pl.col("id_right").alias("dest"),
                pl.min(["min_a", "min_a_right"]).alias("min_a_w"),
                pl.min(["min_f", "min_f_right"]).alias("min_f_w"),
                pl.min(["max_f", "max_f_right"]).alias("max_f_w"),
            ]
        ).collect()
        # print(out_df.head(5))

        out_df2 = out_df.with_column(
            pl.when(pl.col(["min_a_w", "min_f_w", "max_f_w"]) <= 0.6)
            .then(0.0)
            .when(pl.col(["min_a_w", "min_f_w", "max_f_w"]) <= 1.2)
            .then(0.33)
            .when(pl.col(["min_a_w", "min_f_w", "max_f_w"]) <= 3.0)
            .then(0.66)
            .otherwise(1)
        )

        out_df2 = out_df2.drop(["min_a_w", "min_f_w", "max_f_w"])
        out_df2.columns = ["orig", "dest", "min_a_w", "min_f_w", "max_f_w"]
        out_df2.write_csv(file_name)
        print(file_name)
        # print(out_df2.head(5))
        # break;
