.class public Lcom/duoyou/gamesdk/c/b/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static a:Lcom/duoyou/gamesdk/c/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/d;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/b/d;->a:Lcom/duoyou/gamesdk/c/b/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dysystem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/b/d;

    invoke-direct {v1, p0, v0}, Lcom/duoyou/gamesdk/c/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/duoyou/gamesdk/c/b/d;->a:Lcom/duoyou/gamesdk/c/b/d;

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/b/d;->a:Lcom/duoyou/gamesdk/c/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, " CREATE TABLE IF NOT EXISTS user_info ( id integer primary key autoincrement, userId VARCHAR(200) UNIQUE NOT NULL , username TEXT, phoneNum TEXT, password TEXT, isReal TEXT, loginType VARCHAR(200), appId VARCHAR(200),  updateTime INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS user_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/b/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
