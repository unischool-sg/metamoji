.class public Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;
.super Landroid/widget/LinearLayout;
.source "UnSurveySpecLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 31
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;->getMeasuredWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x4082c00000000000L    # 600.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4089000000000000L    # 800.0

    div-double/2addr v0, v2

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p2, v0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;->setMeasuredDimension(II)V

    return-void
.end method
