.class public Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "CabinetBoxParticipationCodeDialog.java"


# instance fields
.field _box1:Landroid/widget/TextView;

.field _box2:Landroid/widget/TextView;

.field _box3:Landroid/widget/TextView;

.field _box4:Landroid/widget/TextView;

.field _box5:Landroid/widget/TextView;

.field _box6:Landroid/widget/TextView;

.field private _globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field _inviteToMessage:Landroid/widget/TextView;

.field _lowerLayout:Landroid/view/ViewGroup;

.field _updateButton:Lcom/metamoji/ui/common/UiButton;

.field _upperLayout:Landroid/widget/LinearLayout;

.field public driveId:Ljava/lang/String;

.field public driveName:Ljava/lang/String;

.field public participationCode:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fget_globalLayoutListener(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrecalcSize(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->recalcSize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    .line 33
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    .line 34
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box2:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box3:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box4:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box5:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box6:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_updateButton:Lcom/metamoji/ui/common/UiButton;

    .line 42
    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private getMaxLineWidth(Landroid/text/StaticLayout;)F
    .locals 4

    .line 285
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 287
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 288
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;
    .locals 8

    if-eqz p3, :cond_0

    .line 276
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    const p3, 0x7fffffff

    :goto_0
    move v3, p3

    .line 279
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
    .locals 20

    move-object/from16 v0, p0

    .line 177
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    .line 178
    iget-object v3, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    .line 180
    iget-object v5, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    .line 182
    iget-object v6, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    iget-object v7, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    double-to-int v8, v3

    .line 184
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v7, v6, v9}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v7

    .line 186
    invoke-direct {v0, v7}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v9

    float-to-double v9, v9

    .line 187
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    :goto_0
    int-to-double v11, v7

    cmpg-double v7, v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    if-ltz v7, :cond_6

    cmpg-double v7, v1, v11

    if-gez v7, :cond_0

    goto/16 :goto_5

    .line 199
    :cond_0
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 202
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double v5, v1, v3

    const/4 v8, 0x6

    int-to-double v10, v8

    mul-double v12, v1, v10

    mul-double v14, v10, v5

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v5, v14

    add-double v12, v12, v16

    cmpl-double v16, v12, v1

    if-lez v16, :cond_2

    move-wide/from16 v16, v1

    :goto_1
    cmpl-double v12, v12, v1

    if-lez v12, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v5

    div-double v5, v16, v3

    mul-double v12, v16, v10

    mul-double v18, v10, v5

    add-double v12, v12, v18

    mul-double v18, v5, v14

    add-double v12, v12, v18

    goto :goto_1

    :cond_1
    move-wide/from16 v10, v16

    goto :goto_2

    :cond_2
    move-wide v10, v1

    .line 215
    :goto_2
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    double-to-int v2, v10

    double-to-int v5, v5

    move v3, v2

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 216
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box2:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 217
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box3:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 218
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box4:Landroid/widget/TextView;

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 219
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box5:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 220
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box6:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->setSize(Landroid/view/View;IIII)V

    .line 222
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 223
    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box2:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box3:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box4:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box5:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box6:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_3
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    const v2, 0x44098000    # 550.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 234
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 235
    const-string v12, "9"

    const/4 v13, 0x0

    invoke-direct {v0, v1, v12, v13}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 237
    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v3

    float-to-double v3, v3

    .line 238
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-double v5, v1

    :goto_3
    cmpg-double v1, v10, v3

    if-ltz v1, :cond_5

    cmpg-double v1, v10, v5

    if-gez v1, :cond_4

    goto :goto_4

    .line 250
    :cond_4
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 251
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 252
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 253
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box4:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 254
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box5:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box6:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 257
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box2:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box3:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box4:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box5:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box6:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_5
    :goto_4
    sub-float/2addr v2, v9

    .line 242
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    iget-object v1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 245
    invoke-direct {v0, v1, v12, v13}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v3

    float-to-double v3, v3

    .line 247
    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v1

    add-int/2addr v5, v1

    int-to-double v5, v5

    goto :goto_3

    :cond_6
    :goto_5
    sub-float/2addr v5, v9

    .line 191
    iget-object v7, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 192
    iget-object v7, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 194
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v7, v6, v9}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->measure(Landroid/text/TextPaint;Ljava/lang/String;Ljava/lang/Integer;)Landroid/text/StaticLayout;

    move-result-object v7

    .line 195
    invoke-direct {v0, v7}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->getMaxLineWidth(Landroid/text/StaticLayout;)F

    move-result v9

    float-to-double v9, v9

    .line 196
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    goto/16 :goto_0
.end method

.method private setSize(Landroid/view/View;IIII)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    .line 267
    iput p2, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 268
    iput p3, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 269
    iput p4, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 270
    iput p5, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method handleUpdateParticipationCodeButtonTouchUp()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveId:Ljava/lang/String;

    new-instance v1, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4;

    invoke-direct {v1, p0, p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$4;-><init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/metamoji/noteanytime/MainActivity;->updateDriveAllowToParticipateBoxCache(Ljava/lang/String;ZLcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->control_dialog_body:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 54
    new-instance v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$1;-><init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 68
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->control_dialog_body:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 123
    new-instance v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$3;-><init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 137
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    .line 76
    const-string v0, "participationCode"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    .line 77
    const-string v0, "driveName"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveName:Ljava/lang/String;

    .line 80
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_participation_code:I

    iput v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->mViewId:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->mDone:Z

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->mClose:Z

    .line 83
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->mCancel:Z

    .line 84
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->mModal:Z

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 90
    sget p3, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_PARTICIPATION_CODE:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 92
    const-string v0, "%@"

    const-string v1, "%s"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget p2, Lcom/metamoji/noteanytime/R$id;->upperLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_upperLayout:Landroid/widget/LinearLayout;

    .line 97
    sget p2, Lcom/metamoji/noteanytime/R$id;->inviteToMessage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_inviteToMessage:Landroid/widget/TextView;

    .line 98
    sget p2, Lcom/metamoji/noteanytime/R$id;->lowerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_lowerLayout:Landroid/view/ViewGroup;

    .line 100
    sget p2, Lcom/metamoji/noteanytime/R$id;->box1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box1:Landroid/widget/TextView;

    .line 101
    sget p2, Lcom/metamoji/noteanytime/R$id;->box2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box2:Landroid/widget/TextView;

    .line 102
    sget p2, Lcom/metamoji/noteanytime/R$id;->box3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box3:Landroid/widget/TextView;

    .line 103
    sget p2, Lcom/metamoji/noteanytime/R$id;->box4:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box4:Landroid/widget/TextView;

    .line 104
    sget p2, Lcom/metamoji/noteanytime/R$id;->box5:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box5:Landroid/widget/TextView;

    .line 105
    sget p2, Lcom/metamoji/noteanytime/R$id;->box6:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_box6:Landroid/widget/TextView;

    .line 107
    sget p2, Lcom/metamoji/noteanytime/R$id;->updateButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->_updateButton:Lcom/metamoji/ui/common/UiButton;

    .line 108
    new-instance p3, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog$2;-><init>(Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 147
    const-string v0, "participationCode"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "driveName"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
