.class public Lcom/metamoji/forSchool/ui/ScScoreInfoView;
.super Landroid/widget/LinearLayout;
.source "ScScoreInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BTN_HEIGHT:I = 0x1a

.field private static final DATE_LABEL_FONT_SIZE:I = 0xc

.field private static final DATE_LABEL_HEIGHT:I = 0x14

.field private static final FONT_COLOR:I

.field private static final FONT_HIGHLIGHTCOLOR:I

.field private static final LABEL_FONT_SIZE:I = 0xe

.field private static final LABEL_HEIGHT:I = 0x1a

.field private static final LABEL_PADDING:I = 0x5

.field private static final MENUBTN_FONT_SIZE:I = 0xc

.field private static final MENUBTN_WIDTH:I = 0x1a

.field private static final PANEL_BG_COLOR:I

.field private static final PANEL_MARGIN_RIGHT:I = 0xa

.field private static final PANEL_MARGIN_TOP:I = 0xa

.field private static final PANEL_WIDTH:I = 0x8c

.field private static final SCOREBTN_HIGHLIGHT_COLOR:I

.field private static final SCOREBTN_ICON_SIZE:I = 0x1f

.field private static final SEPARATOR_SIZE:I = 0x1


# instance fields
.field m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

.field m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

.field m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

.field m_reportInfoPanel:Landroid/widget/LinearLayout;

.field m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

.field m_studentReportBtn:Landroid/widget/TextView;

.field m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

.field m_studentUnReportBtn:Landroid/widget/TextView;

.field m_teacherNotYetPanel:Landroid/widget/LinearLayout;

.field m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

.field m_teacherScorePanel:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$mhandleReportByStudentBtnTap(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->handleReportByStudentBtnTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScoreBtnTap(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->handleScoreBtnTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnReportByStudentBtnTap(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->handleUnReportByStudentBtnTap()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0x38

    const/16 v2, 0xca

    .line 71
    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sput v3, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->PANEL_BG_COLOR:I

    .line 72
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sput v3, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->FONT_COLOR:I

    const/16 v3, 0x64

    .line 73
    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->FONT_HIGHLIGHTCOLOR:I

    .line 74
    invoke-static {v3, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->SCOREBTN_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 119
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    .line 121
    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    const/4 v3, -0x1

    .line 122
    invoke-virtual {v0, v3}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setBackgroundColor(I)V

    const/4 v4, 0x1

    .line 123
    invoke-virtual {v0, v4}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setClickable(Z)V

    .line 124
    invoke-virtual {v0, v4}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setOrientation(I)V

    .line 126
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x430c0000    # 140.0f

    .line 127
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    .line 130
    invoke-virtual {v5, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 131
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v8, 0xa

    .line 133
    invoke-virtual {v5, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 134
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 135
    invoke-virtual {v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    iget-object v8, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->addView(Landroid/view/View;)V

    .line 151
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 152
    sget v8, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_NOTREPORT:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 154
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v9, 0x40400000    # 3.0f

    .line 155
    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v10

    float-to-int v10, v10

    sget v11, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->PANEL_BG_COLOR:I

    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 156
    sget v10, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->FONT_COLOR:I

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 157
    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    const/16 v8, 0x11

    .line 160
    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 161
    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    const/16 v12, 0xe

    .line 162
    invoke-static {v5, v4, v12, v4, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 163
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v13, 0x40a00000    # 5.0f

    .line 164
    invoke-static {v13}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v14

    float-to-int v14, v14

    invoke-static {v13}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v5, v14, v6, v15, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 166
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x41d00000    # 26.0f

    move/from16 v16, v9

    .line 168
    invoke-static {v15}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v14, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 169
    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v17, v13

    const/16 v13, 0x10

    .line 170
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 171
    invoke-virtual {v5, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v14, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 177
    sget v14, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->SCOREBTN_HIGHLIGHT_COLOR:I

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 178
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v18, v15

    const/high16 v15, 0x41400000    # 12.0f

    .line 180
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    sget v15, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_BTN:I

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 184
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v19, v9

    .line 185
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v15, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    iput v13, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 188
    invoke-static/range {v19 .. v19}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    iput v9, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 189
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 192
    new-instance v9, Lcom/metamoji/forSchool/ui/ScScoreInfoView$1;

    invoke-direct {v9, v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$1;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v9, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;

    invoke-direct {v9, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    iget-object v9, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    sget v9, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_BTN_REPORT:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 207
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 208
    invoke-static/range {v16 .. v16}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 209
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 210
    iget-object v9, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    sget v9, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->FONT_HIGHLIGHTCOLOR:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 214
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 216
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 218
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v5, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 222
    invoke-static/range {v19 .. v19}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 223
    iget-object v15, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 226
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    new-instance v15, Lcom/metamoji/forSchool/ui/ScScoreInfoView$2;

    invoke-direct {v15, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$2;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    new-instance v15, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;

    invoke-direct {v15, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->addView(Landroid/view/View;)V

    .line 236
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 239
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 241
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    iget-object v15, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->addView(Landroid/view/View;)V

    .line 249
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    sget v15, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_REPORTED:I

    invoke-virtual {v5, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 251
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 252
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 253
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 254
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v4, v12, v4, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 255
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v5, v15, v6, v12, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 258
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v5, v3, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 262
    iget-object v12, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v12, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 267
    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 268
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 269
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 270
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v12, 0xc

    invoke-static {v5, v4, v12, v4, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 271
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v15, v6, v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 274
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41a00000    # 20.0f

    .line 276
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v5, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 278
    iget-object v15, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v15, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    iget-object v15, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 284
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 285
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 286
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x2

    invoke-static {v5, v15, v12, v4, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 287
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 288
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v5, v12, v6, v15, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 290
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 292
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 294
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    .line 301
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    sget v7, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_BTN_CANCELREPORT:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 303
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 304
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 306
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 310
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 313
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 314
    invoke-static/range {v19 .. v19}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 315
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 318
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    new-instance v7, Lcom/metamoji/forSchool/ui/ScScoreInfoView$3;

    invoke-direct {v7, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$3;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    new-instance v7, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;

    invoke-direct {v7, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->addView(Landroid/view/View;)V

    .line 328
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    .line 329
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 332
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 335
    invoke-static/range {v19 .. v19}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 336
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->addView(Landroid/view/View;)V

    .line 341
    new-instance v5, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 342
    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatButton;->setGravity(I)V

    .line 343
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    .line 345
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/AppCompatButton;->setHighlightColor(I)V

    .line 346
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatButton;->setMaxLines(I)V

    .line 347
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v7, 0xe

    invoke-static {v5, v4, v7, v4, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 348
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 351
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 352
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 353
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v14, 0x10100a7

    .line 354
    filled-new-array {v14}, [I

    move-result-object v15

    invoke-virtual {v12, v15, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 355
    new-array v7, v6, [I

    invoke-virtual {v12, v7, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v5, v12}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 361
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->set_score:I

    invoke-static {v5}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/high16 v12, 0x41f80000    # 31.0f

    .line 362
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    .line 363
    invoke-static {v5, v12, v12, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 364
    invoke-static {v5, v9}, Lcom/metamoji/ui/HoverCm;->makePushImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 365
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v16, v14

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v15, v14, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 366
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v5, v14, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 367
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 368
    filled-new-array/range {v16 .. v16}, [I

    move-result-object v14

    invoke-virtual {v12, v14, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 369
    new-array v5, v6, [I

    invoke-virtual {v12, v5, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v5, v7, v7, v12, v7}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v5, v7, v6, v12, v6}, Landroidx/appcompat/widget/AppCompatButton;->setPadding(IIII)V

    .line 374
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 376
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v12, -0x2

    invoke-direct {v5, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 377
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v7, v19

    .line 378
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 379
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/AppCompatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v7, Lcom/metamoji/forSchool/ui/ScScoreInfoView$4;

    invoke-direct {v7, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$4;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 391
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 392
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, 0x41400000    # 12.0f

    .line 394
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 395
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 396
    sget v7, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_BTN:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 398
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 399
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v19, 0x3f800000    # 1.0f

    .line 402
    invoke-static/range {v19 .. v19}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 403
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 406
    new-instance v7, Lcom/metamoji/forSchool/ui/ScScoreInfoView$5;

    invoke-direct {v7, v0, v5}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$5;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    new-instance v7, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;

    invoke-direct {v7, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 418
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 419
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    .line 420
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 421
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 422
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 423
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v7, 0xe

    invoke-static {v1, v4, v7, v4, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 424
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 425
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static/range {v17 .. v17}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v2, v6, v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 427
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 429
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 430
    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v19, 0x3f800000    # 1.0f

    .line 431
    invoke-static/range {v19 .. v19}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 432
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->addView(Landroid/view/View;)V

    .line 437
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    instance-of v2, v1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v2, :cond_0

    .line 439
    check-cast v1, Lcom/metamoji/noteanytime/EditorActivity;

    sget v2, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/CustomMenuView;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    .line 443
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->updateStatus()V

    return-void
.end method

.method private handleReportByStudentBtnTap()V
    .locals 3

    .line 765
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 772
    :cond_1
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_REPORT_BY_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_REPORT_BY_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 776
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_OperationCouldntBeCompleted:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method private handleScoreBtnTap()V
    .locals 3

    .line 744
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 751
    :cond_1
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_SCORE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 752
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_SCORE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 755
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_OperationCouldntBeCompleted:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method private handleUnReportByStudentBtnTap()V
    .locals 3

    .line 786
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 793
    :cond_1
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_UNREPORT_BY_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_SCOREMENU_UNREPORT_BY_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 797
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_OperationCouldntBeCompleted:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method

.method private showActionMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 730
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 731
    invoke-static {v0, p3, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/high16 p3, -0x40000000    # -2.0f

    .line 732
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    float-to-int p3, p3

    .line 733
    invoke-virtual {v5, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 735
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    sget-object v6, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V

    return-void
.end method


# virtual methods
.method handleMenuButtonTap(Landroid/view/View;)V
    .locals 9

    .line 683
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 688
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    .line 696
    :cond_2
    new-instance v1, Lcom/metamoji/forSchool/ui/ScScoreInfoView$7;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$7;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    .line 699
    new-instance v2, Lcom/metamoji/forSchool/ui/ScScoreInfoView$8;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$8;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    .line 703
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 704
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 705
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/NtCommand;

    .line 706
    invoke-virtual {v0, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 707
    new-instance v7, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v7}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 708
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v7, v6}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 710
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 713
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 715
    new-instance v1, Lcom/metamoji/forSchool/ui/ScScoreInfoView$9;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$9;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;Lcom/metamoji/nt/NtCommandManager;)V

    invoke-direct {p0, v3, v1, p1, v4}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->showActionMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public updatePosition()V
    .locals 2

    .line 450
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ui/ScScoreInfoView$6;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView$6;-><init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateStatus()V
    .locals 14

    .line 515
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    .line 517
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic()Ljava/util/Map;

    move-result-object v0

    .line 518
    const-string v2, "status"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    if-nez v1, :cond_0

    .line 521
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportStatusLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "isReported"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_REPORTED:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_NOTREPORT:I

    .line 526
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 529
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_NOVALUE:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 530
    const-string v4, "reportedDateFirst"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 532
    invoke-static {v4}, Lcom/metamoji/ns/NsCollaboUtils;->timestampString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 535
    :cond_2
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_NOVALUE:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    .line 536
    const-string v6, "reportedDateLast"

    invoke-static {v0, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_3

    .line 538
    invoke-static {v6}, Lcom/metamoji/ns/NsCollaboUtils;->timestampString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 541
    :cond_3
    const-string v7, ""

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-eqz v4, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 543
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v5, 0xe

    invoke-static {v4, v8, v5, v9, v9}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 544
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    const/16 v3, 0x28

    goto :goto_1

    .line 550
    :cond_4
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v6, 0xc

    invoke-static {v4, v8, v6, v9, v9}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 551
    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_FIRST_REPORTTIME:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    .line 553
    const-string v6, "%@"

    const-string v12, "%s"

    invoke-virtual {v4, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 554
    iget-object v13, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_LAST_REPORTTIME:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-virtual {v3, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 558
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel2:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    const/16 v3, 0x14

    .line 562
    :goto_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v3, v3

    .line 564
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 565
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 566
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportDateLabel1:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_5

    .line 570
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_SCORE:I

    goto :goto_2

    :cond_5
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_NOVALUE:I

    :goto_2
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 571
    const-string v4, "score"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 573
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_SCORE:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 575
    :cond_6
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScoreBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    if-eqz v1, :cond_a

    .line 584
    sget-object v1, Lcom/metamoji/forSchool/ui/ScScoreInfoView$10;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v9, :cond_9

    if-eq v1, v8, :cond_8

    if-eq v1, v0, :cond_7

    .line 611
    invoke-virtual {p0, v11}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    goto :goto_3

    .line 603
    :cond_7
    invoke-virtual {p0, v10}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 595
    :cond_8
    invoke-virtual {p0, v10}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 587
    :cond_9
    invoke-virtual {p0, v10}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 615
    :goto_3
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 622
    :cond_a
    sget-object v1, Lcom/metamoji/forSchool/ui/ScScoreInfoView$10;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v9, :cond_d

    if-eq v1, v8, :cond_c

    if-eq v1, v0, :cond_b

    .line 660
    invoke-virtual {p0, v11}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    goto :goto_4

    .line 647
    :cond_b
    invoke-virtual {p0, v10}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 653
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v0

    and-int/2addr v0, v11

    if-nez v0, :cond_e

    .line 654
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MODE2GUIDANCE_SCORED:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 634
    :cond_c
    invoke-virtual {p0, v10}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 640
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v0

    and-int/2addr v0, v11

    if-nez v0, :cond_e

    .line 641
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MODE2GUIDANCE_REPORTED:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 625
    :cond_d
    invoke-virtual {p0, v10}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_reportInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentUnReportBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_studentScoreLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 664
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherNotYetPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->m_teacherScorePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    :goto_5
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 671
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_f

    .line 674
    invoke-static {}, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->sharedInstance()Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->setScoreInfoStr(Ljava/lang/String;Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_f
    return-void
.end method
