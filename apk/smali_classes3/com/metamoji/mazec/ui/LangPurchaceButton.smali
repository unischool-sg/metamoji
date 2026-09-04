.class public Lcom/metamoji/mazec/ui/LangPurchaceButton;
.super Landroid/widget/LinearLayout;
.source "LangPurchaceButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/LangPurchaceButton;->setPressed(Z)V

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 33
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-ltz v3, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/LangPurchaceButton;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_3

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/LangPurchaceButton;->getHeight()I

    move-result v3

    if-ge p1, v3, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v2

    .line 35
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/LangPurchaceButton;->setPressed(Z)V

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/LangPurchaceButton;->performClick()Z

    .line 38
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/LangPurchaceButton;->setPressed(Z)V

    :cond_4
    :goto_2
    return v1
.end method
