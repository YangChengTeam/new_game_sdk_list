.class Lcom/duoyou/gamesdk/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/a/a$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/a/a$1;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$1$1;->a:Lcom/duoyou/gamesdk/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x42340000    # 45.0f

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$1$1;->a:Lcom/duoyou/gamesdk/a/a$1;

    iget-object v1, v1, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v1}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$1$1;->a:Lcom/duoyou/gamesdk/a/a$1;

    iget-object v1, v1, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v1}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dy_float_icon"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$1$1;->a:Lcom/duoyou/gamesdk/a/a$1;

    iget-object v1, v1, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v1}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow;->with(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setView(Landroid/view/View;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/c/f;->a(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setWidth(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/c/f;->a(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setHeight(I)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v3, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setX(IF)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v5, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setY(IF)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setMoveType(III)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    new-instance v4, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v4}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setMoveStyle(JLandroid/animation/TimeInterpolator;)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->setDesktopShow(Z)Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->build()Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/a/a$1$1;->a:Lcom/duoyou/gamesdk/a/a$1;

    iget-object v2, v2, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v2}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatWindow$B;->show(Landroid/app/Activity;)V

    new-instance v1, Lcom/duoyou/gamesdk/a/a$1$1$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/a/a$1$1$1;-><init>(Lcom/duoyou/gamesdk/a/a$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
