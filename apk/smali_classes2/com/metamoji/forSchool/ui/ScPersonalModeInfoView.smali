.class public Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;
.super Landroid/widget/LinearLayout;
.source "ScPersonalModeInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$ViewHighlighter;
    }
.end annotation


# static fields
.field private static final BTN_FONT_SIZE:I = 0xc

.field private static final BTN_WIDTH:I = 0x22

.field private static final LABEL_FONT_SIZE:I = 0xe

.field private static final LABEL_PADDING_X:I = 0x5

.field private static final MARGIN_X:I = 0x5

.field private static final MARGIN_Y:I = 0x5

.field private static final PANEL_HEIGHT:I = 0x1a

.field public static final PANEL_MARGIN_LEFT:I = 0xa

.field public static final PANEL_MARGIN_TOP:I = 0xa

.field private static final PANEL_WIDTH:I = 0x8c

.field private static final SEPARATOR_WIDTH:I = 0x1


# instance fields
.field private _rightMargin:I

.field _studentStatus:Ljava/lang/String;

.field private _topMargin:I

.field m_baseLayout:Landroid/widget/LinearLayout;

.field m_btnsLayout:Landroid/widget/LinearLayout;

.field m_doneButton:Landroid/widget/TextView;

.field m_nextButton:Landroid/widget/ImageView;

.field m_prevButton:Landroid/widget/ImageView;

.field m_separator:Landroid/view/View;

.field m_separatorLeft:Landroid/view/View;

.field m_separatorRight:Landroid/view/View;

.field m_space:Landroid/view/View;

.field m_studentStatusDoItButton:Landroid/widget/ImageView;

.field m_studentStatusHelpButton:Landroid/widget/ImageView;

.field m_textView:Lcom/metamoji/ui/common/UiTextView;


# direct methods
.method static bridge synthetic -$$Nest$mhandleCancelButtonTap(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->handleCancelButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNextButtonTap(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->handleNextButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePrevButtonTap(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->handlePrevButtonTap()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v0, "notyet"

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_studentStatus:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 112
    :goto_0
    iput v2, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_topMargin:I

    .line 115
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setBackgroundColor(I)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setOrientation(I)V

    const/high16 v1, 0x430c0000    # 140.0f

    .line 117
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setMinimumWidth(I)V

    .line 119
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {p0, v4}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    .line 126
    invoke-static {v3, v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getStatusDoItImage(ZZ)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 128
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 129
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 130
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 131
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    .line 135
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    iget-object v7, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->addView(Landroid/view/View;)V

    .line 140
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    .line 141
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getStatusHelpImage(Z)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 143
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 144
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 145
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    .line 149
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    iget-object v7, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->addView(Landroid/view/View;)V

    .line 154
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_space:Landroid/view/View;

    const/4 v7, 0x5

    .line 155
    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 156
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_space:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 158
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x40a00000    # 5.0f

    .line 159
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_space:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_space:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->addView(Landroid/view/View;)V

    .line 165
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0xff

    const/16 v8, 0x23

    const/16 v9, 0x82

    .line 166
    invoke-static {v6, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 167
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 170
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->addView(Landroid/view/View;)V

    .line 177
    new-instance v0, Lcom/metamoji/ui/common/UiTextView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    .line 178
    invoke-virtual {v0, v7}, Lcom/metamoji/ui/common/UiTextView;->setTextColor(I)V

    .line 179
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setTextSize(F)V

    .line 180
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setHeight(I)V

    .line 183
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setMinHeight(I)V

    .line 184
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setMaxHeight(I)V

    .line 185
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiTextView;->setMaxLines(I)V

    .line 186
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiTextView;->setGravity(I)V

    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v0, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    iget-object v10, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v10, v0}, Lcom/metamoji/ui/common/UiTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separator:Landroid/view/View;

    .line 196
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separator:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 199
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v0, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separator:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separator:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    .line 208
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 211
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    .line 219
    invoke-static {v6, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 220
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->pagelist_backward_n:I

    new-instance v5, Lcom/metamoji/cm/Size;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v5, v11, v12}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v0, v7, v5}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    iget-object v5, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 223
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 224
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 225
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 226
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    new-instance v11, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$1;

    invoke-direct {v11, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$1;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    new-instance v11, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$ViewHighlighter;

    invoke-direct {v11, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v0, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    new-instance v11, Landroid/view/View;

    invoke-direct {v11, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorLeft:Landroid/view/View;

    .line 239
    invoke-virtual {v11, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorLeft:Landroid/view/View;

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setMinimumHeight(I)V

    .line 241
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorLeft:Landroid/view/View;

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorLeft:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    .line 245
    invoke-static {v6, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 246
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    const/16 v12, 0x64

    invoke-static {v12, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 247
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 249
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 250
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    sget v12, Lcom/metamoji/noteanytime/R$string;->School_PersonalModeInfo_Btn_End:I

    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    const/high16 v12, 0x428e0000    # 71.0f

    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 252
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    const/high16 v12, 0x42200000    # 40.0f

    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 253
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 254
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 255
    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 256
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 257
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    new-instance v11, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$2;

    invoke-direct {v11, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$2;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v1, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 265
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    new-instance v11, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$ViewHighlighter;

    invoke-direct {v11, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    invoke-virtual {v2, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorRight:Landroid/view/View;

    .line 269
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 270
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorRight:Landroid/view/View;

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 271
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorRight:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    .line 275
    invoke-static {v6, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 276
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->pagelist_forward_n:I

    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {p1, v7, v0}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 279
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 280
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 281
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 282
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$3;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$3;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$ViewHighlighter;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setLayout()V

    const/4 p1, 0x4

    .line 293
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setVisibility(I)V

    .line 294
    invoke-virtual {p0, v3}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setClickable(Z)V

    return-void
.end method

.method private handleCancelButtonTap()V
    .locals 4

    .line 439
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->attentionUserInfoDicForEditor()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    const-string v1, "userName"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_0
    const-string v0, ""

    .line 446
    :goto_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ATTENTION_END:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 450
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 451
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 452
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v1, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView$4;-><init>(Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;)V

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 473
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 474
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 475
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 476
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "handleCancelButtonTap"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 481
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    return-void

    .line 484
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModeFree()V

    :cond_3
    return-void
.end method

.method private handleNextButtonTap()V
    .locals 2

    .line 515
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ERROR_ATTENTION:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 521
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->nextPersonForPersonalMode()V

    return-void

    .line 524
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->nextPersonForFeaturedPersonalMode()V

    :cond_2
    return-void
.end method

.method private handlePrevButtonTap()V
    .locals 2

    .line 496
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ERROR_ATTENTION:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 502
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->prevPersonForPersonalMode()V

    return-void

    .line 505
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->prevPersonForFeaturedPersonalMode()V

    :cond_2
    return-void
.end method

.method private setLayout()V
    .locals 8

    const/high16 v0, 0x430c0000    # 140.0f

    .line 298
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 299
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    .line 308
    :goto_1
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->isShowEditorBars()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    const/high16 v1, 0x41d00000    # 26.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/16 v3, 0x8

    if-nez v4, :cond_4

    .line 309
    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_studentStatus:Ljava/lang/String;

    const-string v7, "doit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_space:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    :goto_3
    float-to-int v1, v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_4

    :cond_4
    if-nez v4, :cond_5

    .line 314
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_studentStatus:Ljava/lang/String;

    const-string v6, "help"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 315
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_space:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    goto :goto_3

    .line 320
    :cond_5
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusDoItButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_studentStatusHelpButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_space:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :goto_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    const/4 v2, -0x1

    .line 330
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 331
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_rightMargin:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v0, v6

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v0, 0xa

    .line 336
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 337
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_topMargin:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 338
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    move v5, v3

    .line 342
    :cond_6
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separator:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_btnsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getRightMargin()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_rightMargin:I

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_topMargin:I

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 347
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->prevNextButtonEnabled(Z)V

    const/4 v0, 0x4

    .line 348
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setVisibility(I)V

    .line 350
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->updatePersonalModeInfoPosition()V

    :cond_0
    return-void
.end method

.method public prevNextButtonEnabled(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 405
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorLeft:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorRight:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 410
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorLeft:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_separatorRight:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRightMargin(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_rightMargin:I

    .line 434
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setLayout()V

    return-void
.end method

.method public setStudentStatus(Ljava/lang/String;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_studentStatus:Ljava/lang/String;

    .line 396
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 398
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updatePersonalModeInfoPosition()V

    :cond_0
    return-void
.end method

.method public setTopMargin(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_topMargin:I

    .line 424
    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setLayout()V

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 361
    invoke-virtual {p0, p3}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->updateColor(Z)V

    .line 364
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {p3, p1}, Lcom/metamoji/ui/common/UiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_textView:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiTextView;->resize()V

    const/4 p1, 0x0

    .line 366
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setVisibility(I)V

    .line 368
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->_studentStatus:Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->updatePersonalModeInfoPosition()V

    :cond_0
    return-void
.end method

.method public updateColor(Z)V
    .locals 3

    const/16 v0, 0x23

    const/16 v1, 0x82

    const/16 v2, 0xff

    .line 382
    invoke-static {v2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    if-nez p1, :cond_0

    const/16 p1, 0x8b

    const/16 v0, 0xb1

    const/16 v1, 0x70

    .line 384
    invoke-static {v2, v1, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_prevButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 387
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_nextButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 388
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_baseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 389
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->m_doneButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-void
.end method
