.class public Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;
.super Landroid/widget/LinearLayout;
.source "ScDeadlineInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$ViewHighlighter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BOTTOMBAR_HEIGHT:I = 0x21

.field private static final FONT_COLOR:I

.field private static final LABEL_FONT_SIZE:I = 0xe

.field private static final LABEL_HEIGHT:I = 0x1a

.field private static final LABEL_PADDING:I = 0x5

.field private static final LABEL_WIDTH:I = 0x8c

.field private static final MENUBTN_FONT_SIZE:I = 0xc

.field private static final MENUBTN_WIDTH:I = 0x1a

.field private static final PANEL_BG_COLOR:I

.field private static final PANEL_MARGIN_LEFT:I = 0x14

.field private static final PANEL_MARGIN_TOP:I = 0xa

.field private static final SEPARATOR_SIZE:I = 0x1

.field private static final STUDENTINFO_ICON_SIZE:I = 0x20

.field private static final STUDENTINFO_LABEL_FONT_SIZE:I = 0xc

.field private static final STUDENTINFO_LABEL_HEIGHT:I = 0x16


# instance fields
.field m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

.field m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

.field m_menuButton:Landroid/widget/TextView;

.field m_studentInfoIcon:Landroid/widget/ImageView;

.field m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

.field m_studentInfoPanel:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7f

    const/16 v1, 0xff

    .line 64
    invoke-static {v1, v1, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->PANEL_BG_COLOR:I

    .line 65
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->FONT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 99
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    .line 101
    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setVisibility(I)V

    const/4 v2, -0x1

    .line 102
    invoke-virtual {v0, v2}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setBackgroundColor(I)V

    const/4 v3, 0x1

    .line 103
    invoke-virtual {v0, v3}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setClickable(Z)V

    .line 104
    invoke-virtual {v0, v3}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setOrientation(I)V

    .line 105
    move-object v4, v1

    check-cast v4, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setLayoutParams(ZLcom/metamoji/noteanytime/EditorActivity;)V

    .line 108
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 109
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43270000    # 167.0f

    .line 112
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v0, v4}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->addView(Landroid/view/View;)V

    .line 119
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v6, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    sget v7, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->PANEL_BG_COLOR:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundColor(I)V

    .line 121
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v9, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->FONT_COLOR:I

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 122
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v10, 0x11

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 123
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 124
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v11, 0xe

    invoke-static {v6, v3, v11, v3, v3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 125
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v11}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-static {v11}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v6, v12, v5, v13, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 128
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x41d00000    # 26.0f

    .line 130
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v6, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x3f800000    # 1.0f

    .line 131
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v14, 0x10

    .line 132
    iput v14, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 133
    iget-object v15, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v15, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 140
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    const/16 v15, 0x64

    move/from16 v16, v11

    const/16 v11, 0xff

    invoke-static {v15, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 141
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 144
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    sget v11, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_MENU_BTN:I

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(I)V

    .line 147
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-direct {v6, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    iput v14, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 151
    invoke-static {v13}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v11

    float-to-int v11, v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 152
    iget-object v11, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 155
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    new-instance v11, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$1;

    invoke-direct {v11, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$1;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    new-instance v11, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$ViewHighlighter;

    invoke-direct {v11, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$ViewHighlighter;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 166
    instance-of v6, v4, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v6, :cond_0

    .line 167
    check-cast v4, Lcom/metamoji/noteanytime/EditorActivity;

    sget v6, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v4, v6}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/CustomMenuView;

    iput-object v4, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    .line 171
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    .line 172
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 173
    iget-object v4, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 175
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 178
    invoke-static {v13}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 179
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v4, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->addView(Landroid/view/View;)V

    .line 184
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    .line 186
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42000000    # 32.0f

    .line 187
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    .line 188
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 190
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v4, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    .line 196
    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 197
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 198
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 199
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v4, 0xc

    invoke-static {v1, v3, v4, v3, v3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 200
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static/range {v16 .. v16}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static/range {v16 .. v16}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v5, v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 202
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41b00000    # 22.0f

    .line 204
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 206
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updateStatus()V

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

    .line 609
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 610
    invoke-static {v0, p3, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/high16 p3, -0x40000000    # -2.0f

    .line 611
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    float-to-int p3, p3

    .line 612
    invoke-virtual {v5, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 614
    sget-object p3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 615
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 620
    sget-object p3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    :cond_0
    move-object v6, p3

    .line 624
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V

    return-void
.end method


# virtual methods
.method handleMenuButtonTap()V
    .locals 9

    .line 556
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 561
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    .line 569
    :cond_2
    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$2;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;)V

    .line 575
    new-instance v2, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$3;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;)V

    .line 582
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 583
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 584
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/NtCommand;

    .line 585
    invoke-virtual {v0, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 586
    new-instance v7, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v7}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 587
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v7, v6}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 589
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 592
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 594
    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$4;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$4;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;Lcom/metamoji/nt/NtCommandManager;)V

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->showActionMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setLayoutParams(ZLcom/metamoji/noteanytime/EditorActivity;)V
    .locals 8

    .line 218
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p1, :cond_7

    .line 224
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 225
    :goto_0
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    const/high16 v4, 0x41a00000    # 20.0f

    const/16 v5, 0x9

    const/high16 v6, 0x41200000    # 10.0f

    const/16 v7, 0xa

    if-nez p1, :cond_5

    if-eqz v3, :cond_3

    const/16 p1, 0xc

    .line 230
    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0x21

    :cond_1
    add-int/2addr v1, v7

    int-to-float p1, v1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 233
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result p1

    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result p1

    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->isDetailWindowOpen()Z

    move-result p1

    if-nez p1, :cond_2

    .line 236
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->isSoftInputVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_2
    const/16 p1, 0x8

    .line 237
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setVisibility(I)V

    goto :goto_1

    .line 240
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result p1

    if-nez p1, :cond_4

    .line 243
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 247
    :cond_4
    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 252
    invoke-virtual {p2}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result p1

    if-nez p1, :cond_6

    .line 255
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 259
    :cond_6
    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 260
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 263
    :cond_7
    :goto_1
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 1

    .line 270
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updateStatus(Z)V

    return-void
.end method

.method public updateStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updateStatus(Z)V

    return-void
.end method

.method public updateStatus(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 289
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    .line 291
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStatus()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v3

    .line 292
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v4

    .line 299
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 301
    invoke-virtual {v5}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v5

    check-cast v5, Lcom/metamoji/noteanytime/EditorActivity;

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 304
    :goto_0
    sget-object v7, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineStatus:[I

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->ordinal()I

    move-result v3

    aget v3, v7, v3

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, ""

    if-eq v3, v10, :cond_16

    const-string v12, "%s"

    const-string v13, "%@"

    const/4 v14, 0x2

    if-eq v3, v14, :cond_d

    const/4 v15, 0x3

    if-eq v3, v15, :cond_8

    if-eq v3, v7, :cond_1

    .line 538
    invoke-virtual {v0, v8}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setVisibility(I)V

    goto/16 :goto_5

    .line 463
    :cond_1
    invoke-virtual {v0, v9}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setVisibility(I)V

    .line 466
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_END:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 496
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 470
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 472
    sget-object v1, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineMode:[I

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_3

    if-eq v1, v14, :cond_2

    .line 489
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 490
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 482
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_readonly:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 483
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 484
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_FORTEACHER_READONLY:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto/16 :goto_5

    .line 475
    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_hidden:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 476
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 477
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_FORTEACHER_DONTSEE:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto/16 :goto_5

    .line 496
    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    sget-object v1, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineMode:[I

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_6

    if-eq v1, v14, :cond_5

    .line 527
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 528
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 517
    :cond_5
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_readonly:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 518
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 519
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_READONLY:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 520
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 500
    :cond_6
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_hidden:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 501
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 502
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_DONTSEE:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 503
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v5, :cond_19

    .line 510
    invoke-virtual {v5}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v5, v7}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 511
    :cond_7
    invoke-virtual {v5}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v5, v7}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    goto/16 :goto_6

    .line 427
    :cond_8
    invoke-virtual {v0, v9}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setVisibility(I)V

    .line 431
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->enableAfterMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 433
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 434
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-ltz v3, :cond_9

    goto :goto_1

    .line 439
    :cond_9
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_ENDTIME:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-virtual {v3, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->timestampString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 436
    :cond_a
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_RUNNING_BEFORE_END:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 446
    :cond_b
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_RUNNING_AFTER_START:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    :goto_2
    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 452
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 456
    :cond_c
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 340
    :cond_d
    invoke-virtual {v0, v9}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setVisibility(I)V

    .line 344
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 345
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-ltz v3, :cond_e

    goto :goto_3

    .line 350
    :cond_e
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_STARTTIME:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-virtual {v3, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->timestampString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 347
    :cond_f
    :goto_3
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_PREVSTART:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    :goto_4
    iget-object v3, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    .line 359
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    sget-object v1, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineMode:[I

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_11

    if-eq v1, v14, :cond_10

    .line 378
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 371
    :cond_10
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_readonly:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 372
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_FORTEACHER_READONLY:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto/16 :goto_5

    .line 364
    :cond_11
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_hidden:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 365
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_FORTEACHER_DONTSEE:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto/16 :goto_5

    .line 385
    :cond_12
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    sget-object v1, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView$5;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$DeadlineMode:[I

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_14

    if-eq v1, v14, :cond_13

    .line 416
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 417
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 406
    :cond_13
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_readonly:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 407
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_READONLY:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 409
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 389
    :cond_14
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_hidden:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_DONTSEE:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 392
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v5, :cond_19

    .line 399
    invoke-virtual {v5}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v5, v7}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 400
    :cond_15
    invoke-virtual {v5}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v5, v7}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    goto :goto_6

    .line 307
    :cond_16
    invoke-virtual {v0, v9}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setVisibility(I)V

    .line 310
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_mainLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_OFFLINE:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 318
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_menuButton:Landroid/widget/TextView;

    if-eqz v2, :cond_17

    .line 314
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    move v9, v10

    goto :goto_6

    .line 318
    :cond_17
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->deadlinestatus_hidden:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoLabel:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINEINFOVIEW_GUIDANCE_DONTSEE:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 324
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->m_studentInfoPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v5, :cond_19

    .line 331
    invoke-virtual {v5}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v5, v7}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 332
    :cond_18
    invoke-virtual {v5}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v5, v7}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    :cond_19
    :goto_6
    if-eqz v5, :cond_1a

    move/from16 v1, p1

    .line 545
    invoke-virtual {v5, v9, v1}, Lcom/metamoji/noteanytime/EditorActivity;->moveDeadlineInfoView(ZZ)V

    .line 548
    invoke-static {}, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->sharedInstance()Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;

    move-result-object v1

    invoke-virtual {v1, v11, v5}, Lcom/metamoji/forSchool/ui/ScMode2InfoLabelManager;->setDeadlineInfoStr(Ljava/lang/String;Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_1a
    return-void
.end method
