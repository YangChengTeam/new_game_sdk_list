.class Lcom/duoyou/gamesdk/f/FIA$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/FIA;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/FIA;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/FIA;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/FIA$4;->a:Lcom/duoyou/gamesdk/f/FIA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA$4;->a:Lcom/duoyou/gamesdk/f/FIA;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/FIA;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/FIA$4;->a:Lcom/duoyou/gamesdk/f/FIA;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/FIA;->a(Lcom/duoyou/gamesdk/f/FIA;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/f/d;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
