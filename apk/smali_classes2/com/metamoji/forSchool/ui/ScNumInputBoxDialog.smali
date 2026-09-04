.class public Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScNumInputBoxDialog.java"


# static fields
.field static final NUM_INPUT_DIGITS:I = 0x3


# instance fields
.field _boxs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field _clearFlag:Z

.field private _globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field _initialValue:I

.field _inputCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _lowerLayout:Landroid/view/ViewGroup;

.field _upperLayout:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$fget_globalLayoutListener(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbackPassCode(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->backPassCode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuttonTapped(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->buttonTapped(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecalcSize(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->recalcSize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetInputCode(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->resetInputCode()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    .line 46
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_upperLayout:Landroid/view/ViewGroup;

    .line 47
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    .line 49
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    .line 53
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    return-void
.end method

.method private backPassCode()V
    .locals 5

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    .line 310
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    if-ltz v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 311
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 314
    :cond_0
    const-string v1, " "

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    .line 318
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private buttonTapped(Ljava/lang/String;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->inputPassCode(Ljava/lang/String;)V

    return-void
.end method

.method private getMaxLineWidth(Landroid/text/StaticLayout;)F
    .locals 4

    .line 441
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 443
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 444
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private inputPassCode(Ljava/lang/String;)V
    .locals 6

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getInputValue()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    const-string v2, " "

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 263
    :goto_0
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 268
    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    if-ge v3, v4, :cond_0

    .line 264
    invoke-virtual {v5, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->isAllCodeInputed()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v0, v1

    .line 283
    :goto_1
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 288
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 284
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 285
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    .line 290
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;
    .locals 8

    if-eqz p3, :cond_0

    .line 432
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const p3, 0x7fffffff

    :goto_0
    move v3, p3

    .line 435
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private recalcSize()V
    .locals 21

    move-object/from16 v0, p0

    .line 325
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_upperLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 326
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_upperLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double v5, v1, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v9, v5, v7

    const/4 v11, 0x3

    int-to-double v11, v11

    mul-double v13, v1, v11

    mul-double v15, v11, v5

    add-double/2addr v13, v15

    mul-double/2addr v7, v9

    add-double/2addr v13, v7

    cmpl-double v15, v13, v1

    if-lez v15, :cond_1

    move-wide v15, v1

    :goto_0
    cmpl-double v13, v13, v1

    if-lez v13, :cond_0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v15, v5

    div-double v5, v15, v3

    mul-double v13, v15, v11

    mul-double v17, v11, v5

    add-double v13, v13, v17

    add-double/2addr v13, v7

    goto :goto_0

    :cond_0
    move-wide v1, v5

    move-wide v6, v15

    goto :goto_1

    :cond_1
    move-wide/from16 v19, v5

    move-wide v6, v1

    move-wide/from16 v1, v19

    .line 341
    :goto_1
    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    double-to-int v4, v6

    double-to-int v5, v9

    double-to-int v1, v1

    move v2, v4

    move v4, v5

    move v5, v1

    move-object v1, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setSize(Landroid/view/View;IIII)V

    move v9, v4

    .line 342
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setSize(Landroid/view/View;IIII)V

    .line 343
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move v3, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setSize(Landroid/view/View;IIII)V

    move v1, v8

    .line 345
    :goto_2
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 350
    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    if-ge v1, v2, :cond_2

    .line 346
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 350
    :cond_2
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x44098000    # 550.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 352
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 353
    const-string v3, "9"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 355
    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v5

    float-to-double v11, v5

    .line 356
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-double v13, v1

    :goto_3
    cmpg-double v1, v6, v11

    if-ltz v1, :cond_9

    cmpg-double v1, v6, v13

    if-gez v1, :cond_3

    goto/16 :goto_9

    :cond_3
    move v1, v8

    .line 368
    :goto_4
    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 369
    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 370
    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 373
    :cond_4
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 374
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 376
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v10, :cond_5

    goto :goto_5

    :cond_5
    move v10, v8

    .line 377
    :goto_5
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v10, :cond_6

    goto/16 :goto_8

    .line 381
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 382
    sget v2, Lcom/metamoji/noteanytime/R$id;->dialog_body:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 383
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 386
    sget v4, Lcom/metamoji/noteanytime/R$id;->button1:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    sget v4, Lcom/metamoji/noteanytime/R$id;->button2:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    sget v4, Lcom/metamoji/noteanytime/R$id;->button3:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    sget v4, Lcom/metamoji/noteanytime/R$id;->button4:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    sget v4, Lcom/metamoji/noteanytime/R$id;->button5:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    sget v4, Lcom/metamoji/noteanytime/R$id;->button6:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    sget v4, Lcom/metamoji/noteanytime/R$id;->button7:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    sget v4, Lcom/metamoji/noteanytime/R$id;->button8:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    sget v4, Lcom/metamoji/noteanytime/R$id;->button9:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    sget v4, Lcom/metamoji/noteanytime/R$id;->button_clear:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    sget v4, Lcom/metamoji/noteanytime/R$id;->button0:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    sget v4, Lcom/metamoji/noteanytime/R$id;->button_back:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/GridLayout$LayoutParams;

    .line 400
    iget v4, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 401
    iget v5, v1, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 402
    iget v1, v1, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    add-int v6, v5, v4

    add-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v5

    add-int/2addr v6, v1

    if-ge v2, v6, :cond_8

    :goto_6
    if-ge v2, v6, :cond_7

    int-to-double v6, v4

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v4, v6

    add-int v6, v5, v4

    add-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v5

    add-int/2addr v6, v1

    goto :goto_6

    .line 411
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 412
    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    .line 413
    iput v4, v3, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 414
    iput v4, v3, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 415
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_8
    :goto_8
    return-void

    :cond_9
    :goto_9
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 360
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 361
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 363
    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 364
    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v5

    float-to-double v11, v5

    .line 365
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v1

    add-int/2addr v5, v1

    int-to-double v13, v5

    goto/16 :goto_3
.end method

.method private resetInputCode()V
    .locals 5

    const/4 v0, 0x0

    .line 294
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    const/4 v1, 0x1

    .line 295
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    .line 297
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 302
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    .line 297
    const-string v4, " "

    if-ge v0, v2, :cond_0

    .line 298
    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSize(Landroid/view/View;IIII)V
    .locals 1

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    .line 423
    iput p2, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 424
    iput p3, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 425
    iput p4, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 426
    iput p5, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method getInputCode()Ljava/lang/String;
    .locals 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputValue()Ljava/lang/Integer;
    .locals 3

    .line 246
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getInputCode()Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v1, " "

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method isAllCodeInputed()Z
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 452
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->control_dialog_body:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 81
    new-instance v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 95
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->control_dialog_body:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 196
    new-instance v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$4;-><init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 210
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    if-eqz p3, :cond_0

    .line 103
    const-string v0, "inputCode"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_num_input_box_phone_land:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->mViewId:I

    goto :goto_2

    .line 107
    :cond_3
    :goto_1
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_num_input_box:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->mViewId:I

    .line 111
    :goto_2
    iput-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->mDone:Z

    .line 112
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->mClose:Z

    .line 113
    iput-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->mCancel:Z

    .line 114
    iput-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->mModal:Z

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->getResources()Landroid/content/res/Resources;

    if-nez p3, :cond_7

    move p2, v1

    :goto_3
    const/4 p3, 0x3

    if-ge p2, p3, :cond_4

    .line 122
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 126
    :cond_4
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    if-eqz p2, :cond_5

    .line 127
    const-string p2, ""

    goto :goto_4

    .line 129
    :cond_5
    iget p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 131
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_6

    rsub-int/lit8 p3, v0, 0x3

    goto :goto_5

    :cond_6
    move p3, v1

    :goto_5
    move v3, v1

    :goto_6
    if-ge v3, v0, :cond_7

    .line 138
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v5, v2, [C

    aput-char v4, v5, v1

    .line 139
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 140
    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {v5, p3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p3, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 145
    :cond_7
    sget p2, Lcom/metamoji/noteanytime/R$id;->box1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 146
    sget p3, Lcom/metamoji/noteanytime/R$id;->box2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 147
    sget v0, Lcom/metamoji/noteanytime/R$id;->box3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    .line 150
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_7
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_8

    .line 155
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_boxs:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 158
    :cond_8
    sget p2, Lcom/metamoji/noteanytime/R$id;->upperLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_upperLayout:Landroid/view/ViewGroup;

    .line 159
    sget p2, Lcom/metamoji/noteanytime/R$id;->lowerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_lowerLayout:Landroid/view/ViewGroup;

    .line 161
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_clear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 162
    new-instance p3, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$2;-><init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 169
    new-instance p3, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$3;-><init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget p2, Lcom/metamoji/noteanytime/R$id;->button1:I

    const-string p3, "7"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 176
    sget p2, Lcom/metamoji/noteanytime/R$id;->button2:I

    const-string p3, "8"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 177
    sget p2, Lcom/metamoji/noteanytime/R$id;->button3:I

    const-string p3, "9"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 178
    sget p2, Lcom/metamoji/noteanytime/R$id;->button4:I

    const-string p3, "4"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 179
    sget p2, Lcom/metamoji/noteanytime/R$id;->button5:I

    const-string p3, "5"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 180
    sget p2, Lcom/metamoji/noteanytime/R$id;->button6:I

    const-string p3, "6"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 181
    sget p2, Lcom/metamoji/noteanytime/R$id;->button7:I

    const-string p3, "1"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 182
    sget p2, Lcom/metamoji/noteanytime/R$id;->button8:I

    const-string p3, "2"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 183
    sget p2, Lcom/metamoji/noteanytime/R$id;->button9:I

    const-string p3, "3"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 184
    sget p2, Lcom/metamoji/noteanytime/R$id;->button0:I

    const-string p3, "0"

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->setClickListener(Landroid/view/View;ILjava/lang/String;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 225
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    const-string v0, "inputCode"

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_inputCode:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    sget-object v0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method setClickListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 215
    new-instance p2, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$5;

    invoke-direct {p2, p0, p3}, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog$5;-><init>(Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDialogTitleId(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->mTitleId:I

    return-void
.end method

.method public setInitialValue(Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 61
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    return-void

    .line 64
    :cond_0
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_clearFlag:Z

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    .line 67
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScNumInputBoxDialog;->_initialValue:I

    :cond_1
    return-void
.end method
