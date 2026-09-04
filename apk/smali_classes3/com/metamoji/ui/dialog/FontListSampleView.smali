.class public Lcom/metamoji/ui/dialog/FontListSampleView;
.super Landroid/view/View;
.source "FontListSampleView.java"


# static fields
.field private static final SAMPLE_TEXT:Ljava/lang/String; = "abc123"

.field private static final TEXT_SIZE:I = 0xe


# instance fields
.field private text:Ljava/lang/String;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 52
    const-string v0, "abc123"

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/FontListSampleView;->setText(Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0xc1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/dialog/FontListSampleView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->text:Ljava/lang/String;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iget-object v2, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 97
    iget-object v1, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 98
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 99
    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/FontListSampleView;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Lcom/metamoji/ui/dialog/FontListSampleView;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/FontListSampleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->text:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->requestLayout()V

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->invalidate()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->requestLayout()V

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontListSampleView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->requestLayout()V

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/FontListSampleView;->invalidate()V

    return-void
.end method
