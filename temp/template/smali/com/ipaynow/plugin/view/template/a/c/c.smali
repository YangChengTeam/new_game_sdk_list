.class public final Lcom/ipaynow/plugin/view/template/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/view/template/a/a/a;


# instance fields
.field private bC:Landroid/graphics/drawable/Drawable;

.field private bD:Ljava/lang/String;

.field private cI:Ljava/lang/String;

.field final synthetic cJ:Lcom/ipaynow/plugin/view/template/a/c/b;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/view/template/a/c/b;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->cJ:Lcom/ipaynow/plugin/view/template/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->bC:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->bD:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->cI:Ljava/lang/String;

    iput-object p2, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->bC:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->bD:Ljava/lang/String;

    iput-object p4, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->cI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->cI:Ljava/lang/String;

    return-object v0
.end method

.method public final ah()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->bC:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final ai()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/c;->bD:Ljava/lang/String;

    return-object v0
.end method
