.class final Lcom/duoyou/a/a/b/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/a/a/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/a/a/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/a/a/b/a/d$a$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:I

.field private d:Ljava/util/Map;

.field private e:Z

.field private g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/duoyou/a/a/b/a/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoyou/a/a/b/a/d$a;->f:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/a/a/b/a/d$a;->e:Z

    iput-object p1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/duoyou/a/a/b/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/a/a/b/a/d$a;->b:Ljava/io/File;

    iput p2, p0, Lcom/duoyou/a/a/b/a/d$a;->c:I

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/duoyou/a/a/b/a/d$a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/duoyou/a/a/b/a/d$a;->g:Ljava/util/WeakHashMap;

    return-void

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/duoyou/a/a/b/a/d$a;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a;->g:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/duoyou/a/a/b/a/d$a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/a/a/b/a/d$a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/a/a/b/a/d$a;->e()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/duoyou/a/a/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/duoyou/a/a/b/a/d$a;->a(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/duoyou/a/a/b/a/d$a;->d:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/duoyou/a/a/b/a/e;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;J)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/duoyou/a/a/b/a/d$a;->d:Ljava/util/Map;

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/duoyou/a/a/b/a/d$a;->e:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/duoyou/a/a/b/a/d$a;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Lcom/duoyou/a/a/b/a/b$a;
    .locals 1

    new-instance v0, Lcom/duoyou/a/a/b/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/duoyou/a/a/b/a/d$a$a;-><init>(Lcom/duoyou/a/a/b/a/d$a;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/duoyou/a/a/b/a/d$a;->e:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method