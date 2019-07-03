.class Lcom/duoyou/gamesdk/f/g$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/g;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/g;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/g;->a(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/g;->a(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/g;->a(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/g;->b(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/g;->a(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/g;->a(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/g;->b(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/g$a;->a:Lcom/duoyou/gamesdk/f/g;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/g;->b(Lcom/duoyou/gamesdk/f/g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
