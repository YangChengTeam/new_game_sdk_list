.class public Lcom/game/sdk/utils/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static ZIP_HEADER_1:[B

.field private static ZIP_HEADER_2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 13
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/game/sdk/utils/ZipUtil;->ZIP_HEADER_1:[B

    .line 14
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/game/sdk/utils/ZipUtil;->ZIP_HEADER_2:[B

    return-void

    .line 13
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    .line 14
    :array_1
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isArchiveFile(Ljava/io/File;)Z
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 23
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v6

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 31
    const/4 v4, 0x0

    .line 32
    .local v4, "isArchive":Z
    const/4 v2, 0x0

    .line 34
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    const/4 v7, 0x4

    :try_start_1
    new-array v0, v7, [B

    .line 36
    .local v0, "buffer":[B
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 37
    .local v5, "length":I
    if-ne v5, v9, :cond_2

    .line 38
    sget-object v7, Lcom/game/sdk/utils/ZipUtil;->ZIP_HEADER_1:[B

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/game/sdk/utils/ZipUtil;->ZIP_HEADER_2:[B

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-nez v7, :cond_4

    move v4, v6

    .line 43
    :cond_2
    :goto_1
    if-eqz v3, :cond_6

    .line 45
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .end local v0    # "buffer":[B
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "length":I
    .restart local v2    # "input":Ljava/io/InputStream;
    :cond_3
    :goto_2
    move v6, v4

    .line 51
    goto :goto_0

    .line 38
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "length":I
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 40
    .end local v0    # "buffer":[B
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "length":I
    .restart local v2    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    if-eqz v2, :cond_3

    .line 45
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 46
    :catch_1
    move-exception v6

    goto :goto_2

    .line 42
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 43
    :goto_4
    if-eqz v2, :cond_5

    .line 45
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 49
    :cond_5
    :goto_5
    throw v6

    .line 46
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "length":I
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "buffer":[B
    .end local v5    # "length":I
    :catch_3
    move-exception v7

    goto :goto_5

    .line 42
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 40
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v5    # "length":I
    :cond_6
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_2
.end method
