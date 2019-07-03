.class public Lcom/duoyou/gamesdk/c/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static a:Lcom/duoyou/gamesdk/c/b/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "dy_game_sdk.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/b;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/b/b;->a:Lcom/duoyou/gamesdk/c/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/b/b;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/b/b;->a:Lcom/duoyou/gamesdk/c/b/b;

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/b/b;->a:Lcom/duoyou/gamesdk/c/b/b;

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/b/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
