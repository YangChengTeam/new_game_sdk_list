.class Lcom/ss/android/common/applog/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/common/applog/i$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field static final f:[Ljava/lang/String;

.field private static final g:Ljava/lang/Object;

.field private static h:Lcom/ss/android/common/applog/i;


# instance fields
.field private i:Landroid/database/sqlite/SQLiteDatabase;

.field private final j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "duration"

    aput-object v1, v0, v5

    const-string v1, "session_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/ss/android/common/applog/i;->a:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    const-string v1, "is_crash"

    aput-object v1, v0, v5

    const-string v1, "timestamp"

    aput-object v1, v0, v6

    const-string v1, "retry_count"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "retry_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "log_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/common/applog/i;->b:[Ljava/lang/String;

    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    const-string v1, "timestamp"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "non_page"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "app_version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "version_code"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pausetime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "launch_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/common/applog/i;->c:[Ljava/lang/String;

    .line 82
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "category"

    aput-object v1, v0, v4

    const-string v1, "tag"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "value"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ext_value"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_json"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "event_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/common/applog/i;->d:[Ljava/lang/String;

    .line 87
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "log_type"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    const-string v1, "session_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/ss/android/common/applog/i;->e:[Ljava/lang/String;

    .line 91
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "log_type"

    aput-object v1, v0, v4

    const-string v1, "value"

    aput-object v1, v0, v5

    sput-object v0, Lcom/ss/android/common/applog/i;->f:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/i;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/ss/android/common/applog/i$a;

    invoke-direct {v0, p1}, Lcom/ss/android/common/applog/i$a;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0}, Lcom/ss/android/common/applog/i$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    iput-object p1, p0, Lcom/ss/android/common/applog/i;->j:Landroid/content/Context;

    .line 142
    return-void
.end method

.method private a(ZJLjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 24

    .prologue
    .line 738
    const/4 v3, 0x0

    .line 739
    const/4 v2, 0x0

    .line 741
    const-wide/16 v12, 0x0

    .line 742
    :try_start_0
    const-string v5, "_id > ? AND session_id=?"

    .line 743
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "0"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 744
    const-string v20, "_id<= ? "

    .line 745
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    const-string v7, "0"

    aput-object v7, v21, v4

    .line 746
    const-string v10, "100"

    .line 747
    const-string v9, "_id ASC"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v16, v12

    move-object v11, v2

    move-object v12, v3

    .line 749
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 750
    const-wide/16 v14, 0x0

    .line 751
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    .line 752
    const/16 v18, 0x0

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "misc_log"

    sget-object v4, Lcom/ss/android/common/applog/i;->e:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 754
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-wide v12, v14

    .line 762
    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 763
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 764
    const-wide/16 v22, 0x0

    cmp-long v2, v14, v22

    if-lez v2, :cond_0

    .line 767
    cmp-long v2, v14, v12

    if-lez v2, :cond_1

    move-wide v12, v14

    .line 770
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 771
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 772
    invoke-static {v4}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 776
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 777
    const-string v4, "log_id"

    invoke-virtual {v7, v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 778
    invoke-static {v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 779
    const-string v4, "log_type"

    invoke-virtual {v7, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 782
    :catch_0
    move-exception v2

    goto :goto_1

    .line 785
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v2, v16, v14

    if-nez v2, :cond_4

    move/from16 v4, v18

    move-object/from16 v2, v19

    .line 790
    :goto_2
    cmp-long v7, v16, v12

    if-ltz v7, :cond_5

    .line 812
    invoke-static {v3}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    .line 814
    :goto_3
    return-object v2

    .line 788
    :cond_4
    const/4 v2, 0x1

    move v4, v2

    move-object v2, v11

    goto :goto_2

    .line 794
    :cond_5
    const/4 v7, 0x0

    :try_start_4
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v21, v7

    .line 795
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "misc_log"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 796
    if-eqz v4, :cond_8

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 797
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 798
    const-string v7, "magic_tag"

    const-string v8, "ss_app_log"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    if-eqz p6, :cond_6

    .line 800
    const-string v7, "time_sync"

    move-object/from16 v0, p6

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    :cond_6
    const-string v7, "log_data"

    move-object/from16 v0, v19

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    if-eqz p5, :cond_7

    .line 804
    const-string v7, "header"

    move-object/from16 v0, p5

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    :cond_7
    const-string v7, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v4, v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 807
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ss/android/common/applog/i;->b(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move-wide/from16 v16, v12

    move-object v11, v2

    move-object v12, v3

    .line 809
    goto/16 :goto_0

    .line 810
    :catch_1
    move-exception v4

    .line 812
    :goto_4
    invoke-static {v3}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    :goto_5
    invoke-static {v3}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v3, v12

    goto :goto_5

    .line 810
    :catch_2
    move-exception v2

    move-object v2, v11

    move-object v3, v12

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v2, v11

    goto :goto_4
.end method

.method protected static a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 121
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    .line 131
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/common/applog/i;->a(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    :try_start_1
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeDatabase error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static closeDB()V
    .locals 2

    .prologue
    .line 113
    sget-object v1, Lcom/ss/android/common/applog/i;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-object v0, Lcom/ss/android/common/applog/i;->h:Lcom/ss/android/common/applog/i;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/ss/android/common/applog/i;->h:Lcom/ss/android/common/applog/i;

    invoke-direct {v0}, Lcom/ss/android/common/applog/i;->b()V

    .line 116
    :cond_0
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;
    .locals 3

    .prologue
    .line 105
    sget-object v1, Lcom/ss/android/common/applog/i;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/ss/android/common/applog/i;->h:Lcom/ss/android/common/applog/i;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/ss/android/common/applog/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ss/android/common/applog/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ss/android/common/applog/i;->h:Lcom/ss/android/common/applog/i;

    .line 108
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sget-object v0, Lcom/ss/android/common/applog/i;->h:Lcom/ss/android/common/applog/i;

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized a(JLjava/lang/String;Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 278
    const-string v1, "log_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "session_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    iget-object v1, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "misc_log"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ss/android/common/applog/p;)J
    .locals 4

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const-wide/16 v0, -0x1

    .line 174
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 160
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    const-string v1, "category"

    iget-object v2, p1, Lcom/ss/android/common/applog/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "tag"

    iget-object v2, p1, Lcom/ss/android/common/applog/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p1, Lcom/ss/android/common/applog/p;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    const-string v1, "label"

    iget-object v2, p1, Lcom/ss/android/common/applog/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_2
    const-string v1, "value"

    iget-wide v2, p1, Lcom/ss/android/common/applog/p;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v1, "ext_value"

    iget-wide v2, p1, Lcom/ss/android/common/applog/p;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    iget-object v1, p1, Lcom/ss/android/common/applog/p;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 168
    const-string v1, "ext_json"

    iget-object v2, p1, Lcom/ss/android/common/applog/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3
    const-string v1, "user_id"

    iget-wide v2, p1, Lcom/ss/android/common/applog/p;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v1, "timestamp"

    iget-wide v2, p1, Lcom/ss/android/common/applog/p;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v1, "session_id"

    iget-wide v2, p1, Lcom/ss/android/common/applog/p;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v1, "event_index"

    iget-wide v2, p1, Lcom/ss/android/common/applog/p;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    iget-object v1, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "event"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ss/android/common/applog/r;J)J
    .locals 6

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    const-wide/16 v0, -0x1

    .line 208
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 192
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 193
    const-string v1, "pausetime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/ss/android/common/applog/r;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 195
    iget-object v2, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "session"

    const-string v4, "_id = ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :goto_1
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 201
    const-string v1, "name"

    iget-object v2, p1, Lcom/ss/android/common/applog/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "duration"

    iget v2, p1, Lcom/ss/android/common/applog/r;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v1, "session_id"

    iget-wide v2, p1, Lcom/ss/android/common/applog/r;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    iget-object v1, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "page"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_3
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update session pausetime exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    :try_start_4
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert page exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    const-wide/16 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/ss/android/common/applog/z;)J
    .locals 6

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    const-wide/16 v0, -0x1

    .line 227
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 216
    :cond_1
    const/4 v0, 0x0

    .line 217
    :try_start_1
    iget-boolean v1, p1, Lcom/ss/android/common/applog/z;->i:Z

    if-eqz v1, :cond_2

    .line 218
    const/4 v0, 0x1

    .line 219
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 220
    const-string v2, "value"

    iget-object v3, p1, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "timestamp"

    iget-wide v4, p1, Lcom/ss/android/common/applog/z;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v2, "duration"

    iget v3, p1, Lcom/ss/android/common/applog/z;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v2, "non_page"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v0, "app_version"

    iget-object v2, p1, Lcom/ss/android/common/applog/z;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "version_code"

    iget v2, p1, Lcom/ss/android/common/applog/z;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v0, "event_index"

    iget-wide v2, p1, Lcom/ss/android/common/applog/z;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "session"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;Lorg/json/JSONObject;Z[J[Ljava/lang/String;Lcom/ss/android/common/applog/AppLog$e;ZLorg/json/JSONObject;)J
    .locals 34

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 486
    :cond_0
    const-string v2, "AppLog"

    const-string v3, "db not establish and open"

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    const-wide/16 v2, -0x1

    .line 731
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 489
    :cond_1
    const/4 v11, 0x0

    .line 490
    const/4 v2, 0x1

    :try_start_1
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/ss/android/common/applog/z;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/ss/android/common/applog/z;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/ss/android/common/applog/z;->g:I

    if-lez v2, :cond_2

    .line 494
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 495
    const-string v3, "app_version"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/ss/android/common/applog/z;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v3, "version_code"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/ss/android/common/applog/z;->g:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 p3, v2

    .line 499
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 500
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 501
    new-instance v24, Lorg/json/JSONArray;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONArray;-><init>()V

    .line 502
    const/4 v12, 0x0

    .line 503
    const-string v9, "_id ASC"

    .line 505
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-nez v2, :cond_2a

    if-nez p4, :cond_2a

    .line 506
    const-string v10, "500"

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "page"

    sget-object v4, Lcom/ss/android/common/applog/i;->a:[Ljava/lang/String;

    const-string v5, "session_id = ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 509
    :try_start_3
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 510
    const/4 v3, 0x0

    .line 511
    const/4 v2, 0x0

    .line 512
    :cond_3
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 513
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 514
    const/4 v8, 0x2

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 515
    invoke-static {v7}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    if-lez v8, :cond_3

    .line 516
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 517
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 518
    const/4 v7, 0x1

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 519
    add-int/2addr v3, v8

    .line 520
    add-int/lit8 v2, v2, 0x1

    .line 521
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 726
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 727
    :goto_2
    :try_start_4
    const-string v4, "AppLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batchSession exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 729
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 731
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .line 524
    :cond_4
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 525
    const/4 v4, 0x0

    .line 526
    if-lez v2, :cond_a

    .line 527
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 528
    const-string v7, "duration"

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 529
    const-string v3, "datetime"

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/ss/android/common/applog/z;->c:J

    invoke-static {v10, v11}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    const-string v3, "session_id"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string v3, "activites"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v3, "local_time_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 533
    invoke-static {v2}, Lcom/ss/android/common/applog/AppLog;->b(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 534
    if-eqz p7, :cond_5

    .line 536
    :try_start_8
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/ss/android/common/applog/z;->a:J

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-interface {v0, v10, v11, v3, v2}, Lcom/ss/android/common/applog/AppLog$e;->a(JLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 540
    :cond_5
    :goto_3
    :try_start_9
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 541
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 542
    const-string v2, "terminate"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    sget v2, Lcom/ss/android/common/applog/AppLog;->r:I

    if-lez v2, :cond_6

    .line 544
    const-string v2, "launch_from"

    sget v3, Lcom/ss/android/common/applog/AppLog;->r:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 545
    const/4 v2, 0x0

    sput v2, Lcom/ss/android/common/applog/AppLog;->r:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    move v5, v12

    move-object v3, v4

    .line 552
    :goto_4
    :try_start_a
    const-string v18, "200"

    .line 553
    const-string v13, "session_id = ?"

    .line 555
    if-eqz p4, :cond_29

    const/4 v2, 0x0

    aget-wide v10, p5, v2

    const-wide/16 v14, 0x0

    cmp-long v2, v10, v14

    if-lez v2, :cond_29

    .line 556
    const-string v13, "_id > ? AND session_id=?"

    .line 557
    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-wide v10, p5, v4

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/ss/android/common/applog/z;->a:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v2

    .line 559
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "event"

    sget-object v12, Lcom/ss/android/common/applog/i;->d:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v4

    .line 561
    const/4 v7, 0x0

    .line 562
    const/4 v3, 0x0

    .line 563
    const/4 v2, 0x0

    .line 564
    const-wide/16 v16, 0x0

    .line 565
    :try_start_b
    new-instance v25, Lorg/json/JSONArray;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONArray;-><init>()V

    .line 566
    new-instance v26, Lorg/json/JSONArray;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V

    move/from16 v22, v7

    .line 567
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 568
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 569
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 570
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 571
    const/4 v7, 0x0

    .line 572
    const/4 v10, 0x3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_28

    .line 573
    const/4 v7, 0x3

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 574
    :goto_7
    const-wide/16 v10, 0x0

    .line 575
    const/4 v7, 0x4

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_27

    .line 576
    const/4 v7, 0x4

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-wide/from16 v20, v10

    .line 577
    :goto_8
    const-wide/16 v10, 0x0

    .line 578
    const/4 v7, 0x5

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_26

    .line 579
    const/4 v7, 0x5

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-wide/from16 v18, v10

    .line 580
    :goto_9
    const/4 v7, 0x0

    .line 581
    const/4 v10, 0x6

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_25

    .line 582
    const/4 v7, 0x6

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 584
    :goto_a
    const-wide/16 v10, 0x0

    .line 585
    const/4 v7, 0x7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_24

    .line 586
    const/4 v7, 0x7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-wide v12, v10

    .line 587
    :goto_b
    const/16 v7, 0x8

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 588
    const/16 v7, 0xa

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 589
    cmp-long v7, v16, v8

    if-gez v7, :cond_23

    move-wide v10, v8

    .line 591
    :goto_c
    const/4 v8, 0x0

    .line 592
    invoke-static {v14}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v7

    if-nez v7, :cond_22

    .line 594
    :try_start_c
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 598
    :goto_d
    if-nez v7, :cond_7

    .line 599
    :try_start_d
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 601
    :cond_7
    const-string v8, "tea_event_index"

    move-wide/from16 v0, v32

    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 602
    const-string v8, "local_time_ms"

    move-wide/from16 v0, v30

    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 603
    const-string v8, "_event_v3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    invoke-static/range {v27 .. v27}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "event_v3"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v8

    if-eqz v8, :cond_b

    .line 605
    :try_start_e
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 606
    const-string v9, "nt"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 607
    const-string v9, "nt"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 608
    const-string v14, "nt"

    invoke-virtual {v8, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 610
    :cond_8
    const-string v9, "nt"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 611
    const-string v9, "_event_v3"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_9

    .line 613
    const-string v9, "user_id"

    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 614
    :cond_9
    const-string v9, "event"

    move-object/from16 v0, v28

    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    const-string v9, "params"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v7, "session_id"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 618
    const-string v7, "datetime"

    invoke-static/range {v30 .. v31}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 620
    add-int/lit8 v2, v2, 0x1

    .line 640
    :goto_e
    add-int/lit8 v7, v22, 0x1

    move-wide/from16 v16, v10

    move/from16 v22, v7

    .line 641
    goto/16 :goto_6

    .line 548
    :cond_a
    const/4 v5, 0x1

    move-object v3, v4

    goto/16 :goto_4

    .line 595
    :catch_1
    move-exception v7

    move-object v7, v8

    goto/16 :goto_d

    .line 624
    :cond_b
    :try_start_f
    const-string v8, "category"

    move-object/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    const-string v8, "tag"

    move-object/from16 v0, v28

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    invoke-static {v15}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 627
    const-string v8, "label"

    invoke-virtual {v7, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    :cond_c
    const-wide/16 v8, 0x0

    cmp-long v8, v20, v8

    if-eqz v8, :cond_d

    .line 629
    const-string v8, "value"

    move-wide/from16 v0, v20

    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 630
    :cond_d
    const-wide/16 v8, 0x0

    cmp-long v8, v18, v8

    if-eqz v8, :cond_e

    .line 631
    const-string v8, "ext_value"

    move-wide/from16 v0, v18

    invoke-virtual {v7, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 632
    :cond_e
    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-lez v8, :cond_f

    .line 633
    const-string v8, "user_id"

    invoke-virtual {v7, v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 634
    :cond_f
    const-string v8, "session_id"

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v8, "datetime"

    invoke-static/range {v30 .. v31}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 638
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 642
    :cond_10
    if-lez v3, :cond_11

    .line 643
    const-string v3, "event"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    :cond_11
    if-lez v2, :cond_12

    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->o()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 646
    const-string v2, "event_v3"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    :cond_12
    if-lez v22, :cond_21

    .line 650
    const/4 v3, 0x1

    .line 653
    :goto_f
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/ss/android/common/applog/z;->a:J

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    move-object/from16 v8, p0

    move/from16 v9, p8

    move-object/from16 v13, p3

    move-object/from16 v14, p9

    invoke-direct/range {v8 .. v14}, Lcom/ss/android/common/applog/i;->a(ZJLjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 654
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_13

    .line 655
    const-string v3, "log_data"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 656
    const/4 v3, 0x1

    .line 658
    :cond_13
    if-eqz p7, :cond_14

    .line 660
    :try_start_10
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->a:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    move-object/from16 v0, p7

    move-object/from16 v1, v23

    invoke-interface {v0, v8, v9, v2, v1}, Lcom/ss/android/common/applog/AppLog$e;->b(JLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 665
    :cond_14
    :goto_10
    :try_start_11
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/ss/android/common/applog/z;->j:Z

    if-eqz v2, :cond_20

    .line 666
    const/4 v2, 0x0

    .line 668
    :goto_11
    if-eqz p4, :cond_15

    if-eqz p8, :cond_15

    .line 669
    const/4 v2, 0x0

    .line 671
    :cond_15
    if-eqz v2, :cond_17

    const-string v2, "terminate"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 672
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 673
    const-string v3, "datetime"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->c:J

    invoke-static {v8, v9}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    const-string v3, "session_id"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 675
    const-string v3, "local_time_ms"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->c:J

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 676
    const-string v3, "tea_event_index"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->d:J

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 677
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-eqz v3, :cond_16

    .line 678
    const-string v3, "is_background"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 679
    :cond_16
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 681
    :cond_17
    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-nez v2, :cond_18

    .line 682
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 683
    const-string v3, "datetime"

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->c:J

    invoke-static {v8, v9}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string v3, "session_id"

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    const-string v3, "local_time_ms"

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->c:J

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 686
    const-string v3, "tea_event_index"

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->d:J

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 687
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 689
    :cond_18
    const/16 v2, 0xc8

    move/from16 v0, v22

    if-lt v0, v2, :cond_1f

    .line 690
    const-string v2, "session_id= ? AND _id<= ?"

    .line 691
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/ss/android/common/applog/z;->a:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 692
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "event"

    invoke-virtual {v5, v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 693
    const/4 v2, 0x0

    aput-wide v16, p5, v2

    .line 700
    :cond_19
    :goto_12
    if-eqz p8, :cond_1a

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "page"

    const-string v5, "session_id = ?"

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "misc_log"

    const-string v5, "session_id = ?"

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 704
    :cond_1a
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 705
    const-string v2, "launch"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    :cond_1b
    const-wide/16 v2, 0x0

    .line 708
    const-string v5, "terminate"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "event"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "launch"

    .line 709
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "item_impression"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "log_data"

    .line 710
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "event_v3"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 711
    :cond_1c
    const-string v2, "magic_tag"

    const-string v3, "ss_app_log"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    if-eqz p9, :cond_1d

    .line 713
    const-string v2, "time_sync"

    move-object/from16 v0, v23

    move-object/from16 v1, p9

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    :cond_1d
    const-string v2, "header"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 716
    const-string v2, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 717
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 718
    const/4 v2, 0x0

    aput-object v5, p6, v2

    .line 719
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ss/android/common/applog/i;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 720
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 721
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ss/android/common/applog/i;->j:Landroid/content/Context;

    invoke-static {v6, v2, v3, v5}, Lcom/ss/android/common/applog/m;->trackLogInsert(Landroid/content/Context;JLjava/lang/String;)V

    .line 724
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 729
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v5}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 485
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 661
    :catch_2
    move-exception v2

    .line 662
    :try_start_13
    const-string v5, "AppLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLogSessionBatchEvent exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_10

    .line 729
    :catchall_1
    move-exception v2

    :goto_13
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v3}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 695
    :cond_1f
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "event"

    const-string v5, "session_id = ?"

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 696
    if-eqz p8, :cond_19

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "session"

    const-string v5, "_id = ?"

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_12

    .line 729
    :catchall_2
    move-exception v2

    move-object v4, v11

    goto :goto_13

    :catchall_3
    move-exception v2

    move-object v4, v3

    goto :goto_13

    :catchall_4
    move-exception v2

    move-object v4, v3

    goto :goto_13

    .line 726
    :catch_3
    move-exception v2

    move-object v3, v11

    goto/16 :goto_2

    :catch_4
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 621
    :catch_6
    move-exception v7

    goto/16 :goto_e

    .line 537
    :catch_7
    move-exception v3

    goto/16 :goto_3

    :cond_20
    move v2, v3

    goto/16 :goto_11

    :cond_21
    move v3, v5

    goto/16 :goto_f

    :cond_22
    move-object v7, v8

    goto/16 :goto_d

    :cond_23
    move-wide/from16 v10, v16

    goto/16 :goto_c

    :cond_24
    move-wide v12, v10

    goto/16 :goto_b

    :cond_25
    move-object v14, v7

    goto/16 :goto_a

    :cond_26
    move-wide/from16 v18, v10

    goto/16 :goto_9

    :cond_27
    move-wide/from16 v20, v10

    goto/16 :goto_8

    :cond_28
    move-object v15, v7

    goto/16 :goto_7

    :cond_29
    move-object v14, v6

    goto/16 :goto_5

    :cond_2a
    move v5, v12

    move-object v3, v11

    goto/16 :goto_4
.end method

.method a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/common/applog/i;->a(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized a(Ljava/lang/String;I)J
    .locals 4

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 246
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    const-string v1, "retry_count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v1, "retry_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v1, "log_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    iget-object v1, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "queue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;Lorg/json/JSONObject;)J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 818
    monitor-enter p0

    .line 821
    :try_start_0
    const-string v7, "_id ASC"

    .line 822
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mon_log"

    sget-object v2, Lcom/ss/android/common/applog/i;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "100"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 824
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-wide v2, v10

    .line 825
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 826
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 827
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 828
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v7

    .line 829
    cmp-long v8, v2, v4

    if-gez v8, :cond_0

    move-wide v2, v4

    .line 833
    :cond_0
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 834
    const-string v7, "log_id"

    invoke-virtual {v8, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 835
    invoke-static {v6}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 836
    const-string v4, "log_type"

    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    :cond_1
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 839
    :catch_0
    move-exception v4

    goto :goto_0

    .line 842
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 843
    const/4 v0, 0x0

    .line 844
    cmp-long v4, v2, v10

    if-lez v4, :cond_3

    .line 845
    :try_start_4
    const-string v4, "_id<= ?"

    .line 846
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    .line 847
    iget-object v2, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "mon_log"

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 849
    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 850
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 851
    const-string v3, "magic_tag"

    const-string v4, "ss_app_log"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    if-eqz p2, :cond_4

    .line 853
    const-string v3, "time_sync"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    :cond_4
    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    if-eqz p1, :cond_5

    .line 857
    const-string v1, "header"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 859
    :cond_5
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v9

    .line 864
    :cond_6
    :try_start_5
    invoke-static {v0}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    .line 866
    :goto_1
    if-eqz v9, :cond_7

    .line 867
    const/4 v0, 0x2

    invoke-virtual {p0, v9, v0}, Lcom/ss/android/common/applog/i;->a(Ljava/lang/String;I)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    .line 869
    :goto_2
    monitor-exit p0

    return-wide v0

    .line 861
    :catch_1
    move-exception v0

    move-object v0, v9

    .line 864
    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 864
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_7
    invoke-static {v9}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_7
    move-wide v0, v10

    .line 869
    goto :goto_2

    .line 864
    :catchall_2
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_4

    .line 861
    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public declared-synchronized a(J)Lcom/ss/android/common/applog/q;
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 367
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :goto_0
    monitor-exit p0

    return-object v9

    .line 373
    :cond_1
    :try_start_1
    const-string v7, "_id ASC"

    .line 374
    const-string v8, "1"

    .line 375
    const-string v3, "_id > ?"

    .line 376
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 377
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "queue"

    sget-object v2, Lcom/ss/android/common/applog/i;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 380
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    new-instance v0, Lcom/ss/android/common/applog/q;

    invoke-direct {v0}, Lcom/ss/android/common/applog/q;-><init>()V

    .line 382
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/ss/android/common/applog/q;->a:J

    .line 383
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/android/common/applog/q;->b:Ljava/lang/String;

    .line 384
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    move v2, v10

    .line 385
    :goto_1
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/ss/android/common/applog/q;->c:J

    .line 386
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/ss/android/common/applog/q;->d:I

    .line 387
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/ss/android/common/applog/q;->e:J

    .line 388
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/ss/android/common/applog/q;->f:I

    .line 390
    iget v3, v0, Lcom/ss/android/common/applog/q;->f:I

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 391
    const/4 v2, 0x1

    iput v2, v0, Lcom/ss/android/common/applog/q;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 398
    :cond_2
    :goto_2
    :try_start_3
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v0

    .line 394
    goto :goto_0

    :cond_3
    move v2, v11

    .line 384
    goto :goto_1

    .line 395
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 396
    :goto_3
    :try_start_4
    const-string v2, "AppLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLog exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 398
    :try_start_5
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 398
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 395
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v9

    goto :goto_2
.end method

.method public declared-synchronized a()V
    .locals 6

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_1
    :try_start_1
    const-string v0, "timestamp <= ? OR retry_count > 5"

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x19bfcc00

    sub-long/2addr v2, v4

    .line 353
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    iget-object v2, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "queue"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    :try_start_3
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete expire log error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JZ)Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_1
    :goto_0
    monitor-exit p0

    return v9

    .line 293
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 295
    const/4 v0, 0x1

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    if-nez p3, :cond_6

    .line 301
    const/4 v0, 0x3

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "timestamp"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "retry_count"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "retry_time"

    aput-object v1, v2, v0

    .line 302
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "queue"

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 304
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_3

    .line 323
    :try_start_4
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 307
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 310
    sub-long v2, v6, v2

    const-wide/32 v10, 0x19bfcc00

    cmp-long v2, v2, v10

    if-gez v2, :cond_4

    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    .line 311
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 312
    const-string v3, "retry_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v0, "retry_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "queue"

    const-string v5, "_id = ?"

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 323
    :try_start_6
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    move v9, v8

    .line 315
    goto :goto_0

    .line 323
    :cond_4
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    move v0, v8

    .line 328
    :goto_1
    if-eqz v0, :cond_5

    .line 329
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ss/android/common/applog/m;->trackLogDiscard(Landroid/content/Context;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 333
    :cond_5
    if-eqz v8, :cond_1

    .line 335
    :try_start_7
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "queue"

    const-string v2, "_id = ?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 339
    :goto_2
    :try_start_8
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete app_log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 321
    :goto_3
    :try_start_9
    const-string v2, "AppLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLogSent excepiton: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 323
    :try_start_a
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    move v0, v9

    move v8, v9

    .line 324
    goto :goto_1

    .line 323
    :catchall_1
    move-exception v0

    move-object v1, v10

    :goto_4
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    move v0, v9

    .line 326
    goto :goto_1

    .line 336
    :catch_1
    move-exception v0

    goto :goto_2

    .line 323
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 320
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public declared-synchronized b(J)Lcom/ss/android/common/applog/z;
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :goto_0
    monitor-exit p0

    return-object v9

    .line 416
    :cond_1
    :try_start_1
    const-string v7, "_id DESC"

    .line 417
    const-string v8, "1"

    .line 420
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    .line 421
    const-string v3, "_id < ?"

    .line 422
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 424
    :goto_1
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "session"

    sget-object v2, Lcom/ss/android/common/applog/i;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 427
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    new-instance v0, Lcom/ss/android/common/applog/z;

    invoke-direct {v0}, Lcom/ss/android/common/applog/z;-><init>()V

    .line 429
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/ss/android/common/applog/z;->a:J

    .line 430
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    .line 431
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/android/common/applog/z;->c:J

    .line 433
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_2

    move v2, v10

    :goto_2
    iput-boolean v2, v0, Lcom/ss/android/common/applog/z;->i:Z

    .line 434
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/android/common/applog/z;->f:Ljava/lang/String;

    .line 435
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/android/common/applog/z;->g:I

    .line 436
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/ss/android/common/applog/z;->h:J

    .line 437
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    move v2, v10

    :goto_3
    iput-boolean v2, v0, Lcom/ss/android/common/applog/z;->j:Z

    .line 438
    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/android/common/applog/z;->d:J

    .line 439
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/ss/android/common/applog/z;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 445
    :goto_4
    :try_start_3
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v0

    .line 441
    goto :goto_0

    :cond_2
    move v2, v11

    .line 433
    goto :goto_2

    :cond_3
    move v2, v11

    .line 437
    goto :goto_3

    .line 442
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 443
    :goto_5
    :try_start_4
    const-string v2, "AppLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastSession exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 445
    :try_start_5
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_6
    :try_start_6
    invoke-static {v1}, Lcom/ss/android/common/applog/i;->a(Landroid/database/Cursor;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 442
    :catch_1
    move-exception v0

    goto :goto_5

    :cond_4
    move-object v0, v9

    goto :goto_4

    :cond_5
    move-object v4, v9

    move-object v3, v9

    goto/16 :goto_1
.end method

.method public declared-synchronized c(J)V
    .locals 5

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    :cond_0
    const-string v0, "AppLog"

    const-string v1, "db not establish and open"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_0
    monitor-exit p0

    return-void

    .line 456
    :cond_1
    :try_start_1
    const-string v0, "_id=?"

    .line 457
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 458
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 459
    const-string v3, "launch_sent"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    iget-object v3, p0, Lcom/ss/android/common/applog/i;->i:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "session"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    :try_start_2
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSessionLaunchSent exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
