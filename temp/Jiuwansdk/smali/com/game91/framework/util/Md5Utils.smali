.class public Lcom/game91/framework/util/Md5Utils;
.super Ljava/lang/Object;
.source "Md5Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 12
    const/16 v11, 0x10

    new-array v2, v11, [C

    fill-array-data v2, :array_0

    .line 14
    .local v2, "hexDigits":[C
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 15
    .local v10, "strTemp":[B
    const/4 v8, 0x0

    .line 17
    .local v8, "mdTemp":Ljava/security/MessageDigest;
    :try_start_0
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 18
    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 20
    .local v7, "md":[B
    array-length v4, v7

    .line 21
    .local v4, "j":I
    mul-int/lit8 v11, v4, 0x2

    new-array v9, v11, [C

    .line 22
    .local v9, "str":[C
    const/4 v5, 0x0

    .line 23
    .local v5, "k":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v6, v5

    .end local v5    # "k":I
    .local v6, "k":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 24
    aget-byte v0, v7, v3

    .line 25
    .local v0, "byte0":B
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "k":I
    .restart local v5    # "k":I
    ushr-int/lit8 v11, v0, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v2, v11

    aput-char v11, v9, v6

    .line 26
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "k":I
    .restart local v6    # "k":I
    and-int/lit8 v11, v0, 0xf

    aget-char v11, v2, v11

    aput-char v11, v9, v5

    .line 23
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "byte0":B
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "k":I
    .end local v7    # "md":[B
    .end local v9    # "str":[C
    :goto_1
    return-object v11

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 32
    const-string v11, ""

    goto :goto_1

    .line 12
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
