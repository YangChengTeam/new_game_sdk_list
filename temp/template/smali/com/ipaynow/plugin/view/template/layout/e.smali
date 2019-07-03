.class final Lcom/ipaynow/plugin/view/template/layout/e;
.super Landroid/widget/ListView;


# instance fields
.field final synthetic cx:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/template/layout/e;->cx:Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final overScrollBy(IIIIIIIIZ)Z
    .locals 10

    sget v0, Lcom/ipaynow/plugin/view/template/layout/PayMethodUI;->co:I

    int-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v2

    double-to-int v8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method
