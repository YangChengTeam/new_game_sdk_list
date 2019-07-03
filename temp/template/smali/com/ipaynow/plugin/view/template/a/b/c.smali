.class final Lcom/ipaynow/plugin/view/template/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private cA:Landroid/widget/TextView;

.field private cB:Landroid/widget/TextView;

.field final synthetic cC:Lcom/ipaynow/plugin/view/template/a/b/b;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/view/template/a/b/b;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/a/b/c;->cC:Lcom/ipaynow/plugin/view/template/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/c;->cA:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/c;->cB:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/view/template/a/b/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/view/template/a/b/c;-><init>(Lcom/ipaynow/plugin/view/template/a/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/view/template/a/b/c;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/c;->cA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ipaynow/plugin/view/template/a/b/c;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/a/b/c;->cA:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/view/template/a/b/c;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/b/c;->cB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/ipaynow/plugin/view/template/a/b/c;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/a/b/c;->cB:Landroid/widget/TextView;

    return-void
.end method
