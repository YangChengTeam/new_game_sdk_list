.class public Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 189
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 191
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 196
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    if-nez p1, :cond_0

    .line 198
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 199
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 203
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 204
    return-void

    .line 201
    :cond_0
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;

    .prologue
    .line 210
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;-><init>()V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->putAll(Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;)V

    .line 214
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 117
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 118
    const-class v2, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v2

    .line 119
    :try_start_0
    sget-object v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 120
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 121
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 122
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 123
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 124
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 125
    sget v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 128
    monitor-exit v2

    .line 149
    .end local v0    # "array":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 130
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_1
    :goto_1
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 148
    shl-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 131
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 132
    const-class v2, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v2

    .line 133
    :try_start_2
    sget-object v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 134
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 135
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 136
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 137
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 138
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    .line 139
    sget v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCacheSize:I

    .line 142
    monitor-exit v2

    goto :goto_0

    .line 144
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 152
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 153
    const-class v2, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v2

    .line 154
    :try_start_0
    sget v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 155
    const/4 v1, 0x0

    sget-object v3, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 156
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 157
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 158
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 157
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    :cond_0
    sput-object p1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 161
    sget v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 165
    .end local v0    # "i":I
    :cond_1
    monitor-exit v2

    .line 181
    :cond_2
    :goto_1
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 166
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 167
    const-class v2, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;

    monitor-enter v2

    .line 168
    :try_start_1
    sget v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_5

    .line 169
    const/4 v1, 0x0

    sget-object v3, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    .line 170
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 171
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    .line 172
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 171
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 174
    :cond_4
    sput-object p1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 175
    sget v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mBaseCacheSize:I

    .line 179
    .end local v0    # "i":I
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 220
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 222
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 223
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 226
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 252
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 292
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 233
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 235
    .local v1, "ohashes":[I
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 236
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->allocArrays(I)V

    .line 237
    iget v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-lez v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    iget v3, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    :cond_0
    iget v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    invoke-static {v1, v0, v2}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 243
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 511
    if-ne p0, p1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v7

    .line 514
    :cond_1
    instance-of v9, p1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;

    if-eqz v9, :cond_6

    move-object v3, p1

    .line 515
    check-cast v3, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;

    .line 516
    .local v3, "map":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<**>;"
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->size()I

    move-result v9

    invoke-virtual {v3}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->size()I

    move-result v10

    if-eq v9, v10, :cond_2

    move v7, v8

    .line 517
    goto :goto_0

    .line 521
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    iget v9, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-ge v0, v9, :cond_0

    .line 522
    invoke-virtual {p0, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 523
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 524
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-virtual {v3, v2}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 525
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 526
    if-nez v6, :cond_3

    invoke-virtual {v3, v2}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    move v7, v8

    .line 527
    goto :goto_0

    .line 529
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_5

    move v7, v8

    .line 530
    goto :goto_0

    .line 521
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v7, v8

    .line 534
    goto :goto_0

    .line 535
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v7, v8

    .line 536
    goto :goto_0

    .line 539
    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v3    # "map":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<**>;"
    :cond_6
    instance-of v9, p1, Ljava/util/Map;

    if-eqz v9, :cond_b

    move-object v4, p1

    .line 540
    check-cast v4, Ljava/util/Map;

    .line 541
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->size()I

    move-result v9

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v10

    if-eq v9, v10, :cond_7

    move v7, v8

    .line 542
    goto :goto_0

    .line 546
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    :try_start_1
    iget v9, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-ge v0, v9, :cond_0

    .line 547
    invoke-virtual {p0, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 548
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 549
    .restart local v5    # "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 550
    .restart local v6    # "theirs":Ljava/lang/Object;
    if-nez v5, :cond_9

    .line 551
    if-nez v6, :cond_8

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_8
    move v7, v8

    .line 552
    goto :goto_0

    .line 554
    :cond_9
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v9

    if-nez v9, :cond_a

    move v7, v8

    .line 555
    goto :goto_0

    .line 546
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 558
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .local v1, "ignored":Ljava/lang/NullPointerException;
    move v7, v8

    .line 559
    goto :goto_0

    .line 560
    .end local v1    # "ignored":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .local v1, "ignored":Ljava/lang/ClassCastException;
    move v7, v8

    .line 561
    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_b
    move v7, v8

    .line 565
    goto/16 :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 303
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 573
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 574
    .local v1, "hashes":[I
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 575
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 576
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 577
    aget-object v6, v0, v5

    .line 578
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 576
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    .line 580
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 44
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 45
    const/4 v3, -0x1

    .line 75
    :cond_0
    :goto_0
    return v3

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 51
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 56
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_3

    .line 63
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_5

    .line 68
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 67
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 75
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 262
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    .prologue
    .line 79
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 82
    .local v0, "N":I
    if-nez v0, :cond_1

    .line 83
    const/4 v3, -0x1

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 89
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 94
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 100
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_3

    .line 101
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v3, v1

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_5

    .line 106
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    move v3, v2

    goto :goto_0

    .line 105
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 113
    :cond_5
    xor-int/lit8 v3, v1, -0x1

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 266
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget v3, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 267
    .local v0, "N":I
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 268
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 269
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 270
    aget-object v3, v1, v2

    if-nez v3, :cond_0

    .line 271
    shr-int/lit8 v3, v2, 0x1

    .line 281
    :goto_1
    return v3

    .line 269
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 275
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 276
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    shr-int/lit8 v3, v2, 0x1

    goto :goto_1

    .line 275
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 281
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 341
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/16 v2, 0x8

    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 355
    if-nez p1, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOfNull()I

    move-result v1

    .line 362
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 363
    shl-int/lit8 v6, v1, 0x1

    add-int/lit8 v1, v6, 0x1

    .line 364
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v6, v1

    .line 365
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v6, v1

    .line 400
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v5

    .line 359
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 360
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 369
    :cond_1
    xor-int/lit8 v1, v1, -0x1

    .line 370
    iget v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    iget-object v8, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 371
    iget v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-lt v7, v2, :cond_6

    iget v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    iget v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v6, v7

    .line 376
    .local v2, "n":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 377
    .local v4, "ohashes":[I
    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 378
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->allocArrays(I)V

    .line 380
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_3

    .line 382
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :cond_3
    iget v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    invoke-static {v4, v3, v6}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 389
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4
    iget v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-ge v1, v6, :cond_5

    .line 392
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    iget-object v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v8, v1, 0x1

    iget v9, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    sub-int/2addr v9, v1

    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    sub-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :cond_5
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    aput v0, v6, v1

    .line 397
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object p1, v6, v7

    .line 398
    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object p2, v6, v7

    .line 399
    iget v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 400
    const/4 v5, 0x0

    goto :goto_1

    .line 371
    :cond_6
    iget v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-ge v7, v6, :cond_2

    move v2, v6

    goto :goto_2
.end method

.method public putAll(Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 408
    iget v0, p1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 409
    .local v0, "N":I
    iget v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->ensureCapacity(I)V

    .line 410
    iget v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-nez v2, :cond_1

    .line 411
    if-lez v0, :cond_0

    .line 412
    iget-object v2, p1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget-object v2, p1, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iput v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 421
    :cond_0
    return-void

    .line 417
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 418
    invoke-virtual {p1, v1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 431
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 432
    invoke-virtual {p0, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x0

    .line 444
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v4, v5

    .line 445
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 448
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    invoke-static {v4, v5, v6}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 449
    sget-object v4, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 450
    sget-object v4, Lcom/game91/core/instant/virtualapk/utils/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 451
    iput v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 491
    :cond_0
    :goto_0
    return-object v3

    .line 453
    :cond_1
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_4

    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_4

    .line 457
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-le v4, v0, :cond_2

    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    iget v5, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 461
    .local v0, "n":I
    :cond_2
    iget-object v2, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    .line 462
    .local v2, "ohashes":[I
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 463
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->allocArrays(I)V

    .line 465
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 466
    if-lez p1, :cond_3

    .line 468
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    :cond_3
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_0

    .line 474
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    iget v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    add-int/lit8 v4, p1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    iget v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 479
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_4
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    .line 480
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-ge p1, v4, :cond_5

    .line 483
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mHashes:[I

    iget v7, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    :cond_5
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    .line 488
    iget-object v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v5, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    aput-object v9, v4, v5

    goto/16 :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 332
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 333
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 334
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 498
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 592
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    const-string v4, "{}"

    .line 617
    :goto_0
    return-object v4

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 597
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mSize:I

    if-ge v1, v4, :cond_4

    .line 599
    if-lez v1, :cond_1

    .line 600
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_1
    invoke-virtual {p0, v1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 603
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 608
    :goto_2
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p0, v1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 610
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    .line 611
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 598
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 606
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 613
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 616
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
