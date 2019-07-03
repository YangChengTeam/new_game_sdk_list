.class Lcom/duoyou/gamesdk/b/c/b$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/c/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/b$12;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$12;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->e(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b$12;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v1}, Lcom/duoyou/gamesdk/b/c/b;->f(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/b$12;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/c/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dy_register_eye_open_icon"

    invoke-static {v2, v3}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/duoyou/gamesdk/b/c/b$12;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v3}, Lcom/duoyou/gamesdk/b/c/b;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dy_register_eye_close_icon"

    invoke-static {v3, v4}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/c/c;->a(Landroid/widget/EditText;Landroid/widget/ImageView;II)V

    return-void
.end method
