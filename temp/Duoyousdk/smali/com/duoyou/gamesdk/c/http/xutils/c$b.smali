.class Lcom/duoyou/gamesdk/c/http/xutils/c$b;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/http/xutils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/c$b;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method
