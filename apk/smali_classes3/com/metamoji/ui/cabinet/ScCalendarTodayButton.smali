.class public final Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;
.super Landroid/view/ViewGroup;
.source "ScCalendarTodayButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0014J0\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\rH\u0014J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0011H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "textView",
        "Landroid/widget/TextView;",
        "getTextView",
        "()Landroid/widget/TextView;",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "onLayout",
        "p0",
        "",
        "l",
        "t",
        "r",
        "b",
        "setEnabled",
        "enabled",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    .line 53
    sget p1, Lcom/metamoji/noteanytime/R$string;->CALENDAR_JUMP_TODAY:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    new-instance p1, Landroid/content/res/ColorStateList;

    const v2, -0x101009e

    .line 57
    filled-new-array {v2}, [I

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [I

    filled-new-array {v3, v5}, [[I

    move-result-object v3

    .line 58
    sget-object v5, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v5}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_BG_P()I

    move-result v5

    sget-object v6, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v6}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_TEXT()I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    .line 56
    invoke-direct {p1, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->setClickable(Z)V

    .line 64
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 65
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 66
    new-array v1, v4, [I

    filled-new-array {v1}, [[I

    move-result-object v1

    .line 67
    sget-object v3, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_BG()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    .line 65
    invoke-direct {v0, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0x12

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 71
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 72
    new-instance v3, Landroid/content/res/ColorStateList;

    .line 73
    new-array v5, v4, [I

    filled-new-array {v5}, [[I

    move-result-object v5

    .line 74
    sget-object v6, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v6}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_BG_P()I

    move-result v6

    filled-new-array {v6}, [I

    move-result-object v6

    .line 72
    invoke-direct {v3, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 78
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 79
    new-instance v5, Landroid/content/res/ColorStateList;

    .line 80
    new-array v4, v4, [I

    filled-new-array {v4}, [[I

    move-result-object v4

    .line 81
    sget-object v6, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v6}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_BG()I

    move-result v6

    filled-new-array {v6}, [I

    move-result-object v6

    .line 79
    invoke-direct {v5, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 86
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v4, -0x10100a7

    const v5, 0x101009e

    .line 88
    filled-new-array {v4, v5}, [I

    move-result-object v4

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const p1, 0x10100a7

    .line 89
    filled-new-array {p1, v5}, [I

    move-result-object p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 90
    filled-new-array {v2}, [I

    move-result-object p1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 91
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final getTextView()Landroid/widget/TextView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 40
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 41
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 42
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    iget-object p3, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 21
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 p1, 0x0

    .line 23
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 24
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1, p1}, Landroid/widget/TextView;->measure(II)V

    .line 27
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-static {p2, v1}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result p2

    add-int/2addr p1, p2

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x24

    invoke-static {p2, v0}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result p2

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarTodayButton;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
