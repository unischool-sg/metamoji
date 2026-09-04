.class public Lcom/metamoji/ui/HoverSelectorView;
.super Landroid/view/View;
.source "HoverSelectorView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;,
        Lcom/metamoji/ui/HoverSelectorView$modeButton;,
        Lcom/metamoji/ui/HoverSelectorView$BandButton;
    }
.end annotation


# static fields
.field static BAND_BASE:I = 0x0

.field private static BAND_R:I = 0x64

.field private static BUTTON_R:I = 0x26

.field private static BUTTON_W:I = 0x50

.field static CENTER_BUTTON:I = 0x0

.field private static FOCUS_W:I = 0x50

.field static MODE_BASE:I = 0x0

.field static MODE_IMAGE:[I = null

.field private static MODE_R:I = 0x68

.field static MODE_TYPE:[Lcom/metamoji/nt/NtNoteController$NoteMode; = null

.field private static TATE_DISTANCE:I = 0x6


# instance fields
.field private HOVER_HEIGHT:I

.field private HOVER_WIDTH:I

.field private _bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

.field _bandSelection:I

.field private _band_r:F

.field private _band_x:I

.field private _band_y:I

.field private _bandcount:I

.field private _box_x:I

.field private _box_y:I

.field private _buttonRadius:F

.field private _button_w:F

.field private _centerImage:Landroid/graphics/Bitmap;

.field private _centerImageHLight:Landroid/graphics/Bitmap;

.field private _context:Landroid/content/Context;

.field private _contextopen:Z

.field private _density:F

.field private _dummyImage:Landroid/graphics/Bitmap;

.field private _enable:Z

.field _eraserSelection:I

.field private _focusImage:Landroid/graphics/Bitmap;

.field private _focus_w:F

.field _hitres:I

.field private _hover_off_x:I

.field private _hover_off_y:I

.field private _hoverimage:Landroid/graphics/Bitmap;

.field private _initialize:Z

.field _lassoSelection:I

.field private _layoutVertical:Z

.field private _layout_state:I

.field private _limitBoundary:Landroid/graphics/Rect;

.field _mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

.field private _mode_r:F

.field private _open:Z

.field private _paddingRight:I

.field private _paddingTop:I

.field _paint:Landroid/graphics/Paint;

.field private _parentRect:Landroid/graphics/Rect;

.field private _parent_h:I

.field private _parent_w:I

.field _penSelection:I

.field private _ratio_x:I

.field private _ratio_y:I

.field _shadow:Landroid/graphics/Path;

.field private _shadowMargin:Landroid/graphics/Rect;

.field private _tate_distance:F

.field _touchButton:I

.field private _touch_x:F

.field private _touch_y:F

.field private _wait_layout:Z

.field private m_modePenImage:Landroid/graphics/Bitmap;

.field m_updateUnitViewStyle:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

.field private modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

.field palette:Landroid/graphics/Path;

.field shadow:Landroid/graphics/Paint;

.field private touchstate:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 120
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_text:I

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_select:I

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_eraser:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_pen_std1:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->bar_hover_view:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HoverSelectorView;->MODE_IMAGE:[I

    const/4 v0, 0x5

    .line 128
    new-array v0, v0, [Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/metamoji/ui/HoverSelectorView;->MODE_TYPE:[Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/16 v0, 0x64

    .line 283
    sput v0, Lcom/metamoji/ui/HoverSelectorView;->BAND_BASE:I

    const/16 v0, 0xc8

    .line 284
    sput v0, Lcom/metamoji/ui/HoverSelectorView;->CENTER_BUTTON:I

    const/16 v0, 0x12c

    .line 285
    sput v0, Lcom/metamoji/ui/HoverSelectorView;->MODE_BASE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 170
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_wait_layout:Z

    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_enable:Z

    const/16 v2, 0xc8

    .line 66
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    .line 67
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    const/high16 v2, 0x41900000    # 18.0f

    .line 83
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 89
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_x:F

    .line 90
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_y:F

    .line 93
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    .line 94
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingTop:I

    .line 95
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingRight:I

    .line 103
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    .line 105
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_layout_state:I

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_hoverimage:Landroid/graphics/Bitmap;

    .line 140
    sget-object v3, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->CURVE_BAR:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    iput-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->m_updateUnitViewStyle:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    .line 145
    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    .line 148
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    .line 149
    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->NONE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    iput-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 150
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 151
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_layoutVertical:Z

    const/4 v3, -0x1

    .line 154
    iput v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    .line 160
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_initialize:Z

    .line 161
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    .line 162
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    .line 163
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_w:I

    .line 164
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_h:I

    .line 165
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_x:I

    .line 166
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_y:I

    .line 415
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_touchButton:I

    .line 416
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_hitres:I

    .line 720
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_paint:Landroid/graphics/Paint;

    .line 721
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->shadow:Landroid/graphics/Paint;

    .line 171
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ui/HoverSelectorView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 174
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_context:Landroid/content/Context;

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 177
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 178
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 181
    iget p1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43a00000    # 320.0f

    div-float/2addr p1, v1

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_density:F

    .line 183
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->BAND_R:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_r:F

    .line 184
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->BUTTON_W:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    .line 185
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->MODE_R:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    .line 186
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->FOCUS_W:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_focus_w:F

    .line 188
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->BUTTON_R:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    .line 189
    sget v3, Lcom/metamoji/ui/HoverSelectorView;->TATE_DISTANCE:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float v4, v1, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_tate_distance:F

    .line 192
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 193
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_r:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 194
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 197
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 198
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 199
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 200
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 202
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_r:F

    mul-float/2addr p1, v1

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    add-float/2addr p1, v3

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    .line 205
    iget-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 206
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_off:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_dummyImage:Landroid/graphics/Bitmap;

    .line 207
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->hover_selection:I

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_focus_w:F

    float-to-int v3, v1

    float-to-int v1, v1

    invoke-direct {p0, p1, v3, v1}, Lcom/metamoji/ui/HoverSelectorView;->makeScaleBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_focusImage:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_dummyImage:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_focusImage:Landroid/graphics/Bitmap;

    .line 212
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_on:I

    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 213
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_off:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    sget-object v3, Lcom/metamoji/ui/HoverSelectorView;->MODE_TYPE:[Lcom/metamoji/nt/NtNoteController$NoteMode;

    array-length v3, v3

    new-array v3, v3, [Lcom/metamoji/ui/HoverSelectorView$modeButton;

    iput-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    move v3, v0

    .line 215
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 216
    sget-object v4, Lcom/metamoji/ui/HoverSelectorView;->MODE_IMAGE:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 217
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    new-instance v6, Lcom/metamoji/ui/HoverSelectorView$modeButton;

    invoke-direct {v6, p0, v2}, Lcom/metamoji/ui/HoverSelectorView$modeButton;-><init>(Lcom/metamoji/ui/HoverSelectorView;Lcom/metamoji/ui/HoverSelectorView-IA;)V

    aput-object v6, v5, v3

    .line 218
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v5, v5, v3

    iget v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v7, v6

    float-to-int v6, v6

    invoke-static {v1, v4, v7, v6}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image:Landroid/graphics/Bitmap;

    .line 219
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v5, v5, v3

    iget v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v7, v6

    float-to-int v6, v6

    invoke-static {p1, v4, v7, v6}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v5, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image_p:Landroid/graphics/Bitmap;

    .line 220
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v4, v4, v3

    iput-boolean v0, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    .line 221
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v4, v4, v3

    sget-object v5, Lcom/metamoji/ui/HoverSelectorView;->MODE_TYPE:[Lcom/metamoji/nt/NtNoteController$NoteMode;

    aget-object v5, v5, v3

    iput-object v5, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 225
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 228
    const-string v1, "MMJNtPenSettings"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtPenSettings;

    .line 229
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_penSelection:I

    .line 232
    const-string v1, "MMJNtEraserSettings"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtEraserSettings;

    .line 233
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_eraserSelection:I

    .line 238
    :cond_2
    const-string p1, "RubberBandKindIndex"

    .line 239
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_lassoSelection:I

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->loadSettingsOnSystem()V

    .line 243
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/HoverSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->setWillNotDraw(Z)V

    return-void
.end method

.method private Compress(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private CreatePenButton(I)Landroid/graphics/Bitmap;
    .locals 9

    .line 883
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v0

    .line 889
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    .line 892
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v0, v0

    .line 893
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 894
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 895
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 897
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v4

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundId(ILjava/util/List;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/metamoji/ui/HoverSelectorView;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 899
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 900
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 901
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 903
    invoke-static {p1}, Lcom/metamoji/ui/HoverSelector;->getPenPreviewWeight(Lcom/metamoji/nt/share/NtPenStyle;)F

    move-result v0

    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_density:F

    mul-float/2addr v6, v5

    invoke-static {p1, v0, v4, v6, v8}, Lcom/metamoji/ui/HoverSelector;->CreatePenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 904
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v0, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 905
    invoke-virtual {v2, p1, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 909
    const-string v0, "Hover@CreatePenButton"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method static ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 968
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 971
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 972
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private distance(FF)F
    .locals 0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getBoundaryModeButtonY(Z)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1400
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 1401
    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    if-eqz v2, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    if-eqz p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hoverDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 724
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_paint:Landroid/graphics/Paint;

    .line 725
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    const/16 v2, 0x64

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->shadow:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 728
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->shadow:Landroid/graphics/Paint;

    const/16 v3, 0x5a

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 730
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->shadow:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 731
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 733
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    int-to-float v1, v1

    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 734
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->shadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 735
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v4, :cond_0

    .line 736
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->shadow:Landroid/graphics/Paint;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 737
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 738
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->shadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 741
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 743
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 744
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 746
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 747
    iget-boolean v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x50

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v8, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v4, v8, :cond_5

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v8, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v4, v8, :cond_5

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v8, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v4, v8, :cond_5

    .line 749
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v4, 0xff

    const/16 v8, 0xec

    .line 751
    invoke-static {v4, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 752
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 753
    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_x:I

    int-to-float v4, v4

    iget v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    int-to-float v8, v8

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 754
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 755
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-eqz v4, :cond_4

    move v4, v5

    .line 756
    :goto_0
    iget v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    if-ge v4, v8, :cond_4

    .line 757
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    .line 759
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_dummyImage:Landroid/graphics/Bitmap;

    .line 761
    :cond_2
    iget-object v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/metamoji/ui/HoverSelectorView$BandButton;->x:F

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    sub-float/2addr v9, v10

    .line 762
    iget-object v10, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v3

    sub-float/2addr v10, v11

    .line 763
    invoke-virtual {p1, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 764
    iget v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_hitres:I

    sget v9, Lcom/metamoji/ui/HoverSelectorView;->BAND_BASE:I

    sub-int/2addr v8, v9

    if-ne v4, v8, :cond_3

    .line 765
    invoke-static {v2, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 766
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->x:F

    iget-object v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v1

    invoke-virtual {p1, v8, v9, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 770
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    move v4, v5

    .line 773
    :goto_1
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v9, v8

    if-ge v4, v9, :cond_9

    .line 774
    aget-object v8, v8, v4

    iget-boolean v8, v8, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v9, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v9, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v8, v9, :cond_8

    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v9, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v8, v9, :cond_8

    .line 776
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image:Landroid/graphics/Bitmap;

    .line 777
    iget v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_hitres:I

    sget v10, Lcom/metamoji/ui/HoverSelectorView;->MODE_BASE:I

    if-lt v9, v10, :cond_6

    sub-int/2addr v9, v10

    if-ne v4, v9, :cond_6

    .line 779
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image_p:Landroid/graphics/Bitmap;

    :cond_6
    if-nez v8, :cond_7

    .line 783
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_dummyImage:Landroid/graphics/Bitmap;

    .line 786
    :cond_7
    iget-object v9, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    sub-float/2addr v9, v1

    .line 787
    iget-object v10, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v10, v10, v4

    iget v10, v10, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    sub-float/2addr v10, v1

    .line 788
    invoke-virtual {p1, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 793
    :cond_9
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v8, 0x0

    if-eq v1, v4, :cond_a

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v4, :cond_a

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v4, :cond_d

    :cond_a
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 795
    iget-boolean v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v4, :cond_b

    .line 796
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImageHLight:Landroid/graphics/Bitmap;

    :cond_b
    if-nez v1, :cond_c

    .line 799
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_dummyImage:Landroid/graphics/Bitmap;

    .line 801
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    neg-float v3, v4

    .line 804
    invoke-virtual {p1, v1, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 806
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v4, v1

    if-ge v5, v4, :cond_11

    .line 807
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v4, v1, :cond_10

    .line 809
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 812
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    if-eqz v1, :cond_e

    .line 810
    aget-object v1, v4, v5

    iget-object v1, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image_p:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 812
    :cond_e
    aget-object v1, v4, v5

    iget-object v1, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image:Landroid/graphics/Bitmap;

    :goto_3
    if-nez v1, :cond_f

    .line 815
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_dummyImage:Landroid/graphics/Bitmap;

    .line 819
    :cond_f
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v4, v8, v4

    .line 820
    invoke-virtual {p1, v1, v4, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 825
    :cond_11
    :goto_4
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hitres:I

    sget v3, Lcom/metamoji/ui/HoverSelectorView;->CENTER_BUTTON:I

    if-ne v1, v3, :cond_12

    .line 826
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 827
    invoke-static {v2, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    invoke-virtual {p1, v8, v8, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 830
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private makeHoverImage(I)V
    .locals 2

    .line 702
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hitres:I

    const/4 p1, 0x0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_hoverimage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 706
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hoverimage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 714
    const-string v1, "Hover-makeHoverImage"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hoverimage:Landroid/graphics/Bitmap;

    return-void
.end method

.method private makeScaleBitmap(III)Landroid/graphics/Bitmap;
    .locals 7

    .line 1113
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1114
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1115
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1116
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1117
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 1118
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static pageClearWithMessage()V
    .locals 4

    .line 1915
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1916
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1917
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_PageClear_Title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1918
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_PageClear_Message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1919
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ui/HoverSelectorView$8;

    invoke-direct {v3}, Lcom/metamoji/ui/HoverSelectorView$8;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1927
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1928
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1931
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1932
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "HoverSelector_Eraser"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private recalcCommandPosition()V
    .locals 12

    .line 1416
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1417
    :goto_0
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1422
    :goto_1
    iput-boolean v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_layoutVertical:Z

    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 1465
    :cond_2
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->CURVE_BAR:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->m_updateUnitViewStyle:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    .line 1466
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->LayoutModeButton2()V

    .line 1467
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->LayoutBand2()V

    .line 1468
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_x:I

    .line 1471
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    neg-float v1, v0

    neg-float v3, v0

    move v5, v0

    goto/16 :goto_6

    .line 1424
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_layoutVertical:Z

    if-eqz v0, :cond_4

    .line 1426
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->VERTICAL_BAR_RIGHT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->m_updateUnitViewStyle:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    goto :goto_3

    .line 1428
    :cond_4
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->VERTICAL_BAR_LEFT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->m_updateUnitViewStyle:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    .line 1430
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->LayoutModeButton()V

    .line 1431
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->LayoutBand()V

    .line 1434
    invoke-direct {p0, v1}, Lcom/metamoji/ui/HoverSelectorView;->getBoundaryModeButtonY(Z)F

    move-result v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1435
    invoke-direct {p0, v2}, Lcom/metamoji/ui/HoverSelectorView;->getBoundaryModeButtonY(Z)F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1436
    iget-object v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-eqz v6, :cond_a

    iget v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    if-lez v7, :cond_a

    .line 1438
    iget v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    sub-int/2addr v7, v1

    .line 1439
    aget-object v6, v6, v7

    iget v6, v6, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    float-to-int v6, v6

    .line 1440
    iget v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_layout_state:I

    if-ne v7, v1, :cond_5

    .line 1441
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_tate_distance:F

    add-float v8, v5, v1

    :cond_5
    int-to-float v1, v6

    add-float v7, v8, v1

    .line 1443
    iget v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    .line 1444
    iget v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_tate_distance:F

    sub-float v7, v0, v7

    sub-float v8, v7, v1

    .line 1447
    :cond_6
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float v1, v1

    add-float/2addr v1, v8

    iget-object v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingTop:I

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    int-to-float v7, v7

    cmpg-float v1, v1, v7

    if-gez v1, :cond_8

    .line 1449
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_tate_distance:F

    neg-float v7, v1

    move v8, v0

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v7

    goto :goto_4

    :cond_8
    move v1, v4

    :goto_4
    float-to-int v1, v1

    .line 1454
    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_x:I

    float-to-int v7, v8

    .line 1455
    iput v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    if-eqz v3, :cond_9

    int-to-float v1, v1

    goto :goto_5

    :cond_9
    int-to-float v1, v1

    move v11, v4

    move v4, v1

    move v1, v11

    :goto_5
    int-to-float v3, v7

    .line 1461
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1462
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v4

    goto :goto_6

    :cond_a
    move v3, v0

    move v0, v4

    move v1, v0

    .line 1477
    :goto_6
    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sub-float v4, v1, v4

    iget-object v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    .line 1478
    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sub-float v4, v3, v4

    iget-object v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    neg-int v4, v4

    iput v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    sub-float/2addr v0, v1

    .line 1479
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    sub-float/2addr v5, v3

    .line 1480
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadowMargin:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v5, v0

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    mul-float/2addr v0, v4

    add-float/2addr v5, v0

    float-to-int v0, v5

    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    .line 1482
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->UpdateCenterButton()V

    .line 1483
    invoke-direct {p0, v2}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    return-void
.end method

.method private setposition(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->positionAdjust()V

    .line 674
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->setTranslationX(F)V

    .line 675
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->setTranslationY(F)V

    return-void

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 678
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    .line 679
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    .line 680
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 681
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x298

    .line 682
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 686
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, 0x0

    .line 687
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 688
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 689
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 690
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public CreateCenterButtonImage()Landroid/graphics/Bitmap;
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 842
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v1, :cond_4

    .line 843
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImageHLight:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 849
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 850
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v1, :cond_2

    .line 851
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 854
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    if-eqz v1, :cond_1

    .line 852
    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image_p:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 854
    :cond_1
    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/metamoji/ui/HoverSelectorView$modeButton;->image:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 861
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_dummyImage:Landroid/graphics/Bitmap;

    :cond_5
    return-object v0
.end method

.method FreezeAnimation()V
    .locals 0

    return-void
.end method

.method HitTest(II)I
    .locals 11

    .line 311
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v1, v1

    .line 312
    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float v2, v2

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->isCloseOrCircle()Z

    move-result v3

    .line 317
    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    const/high16 v6, 0x3fc00000    # 1.5f

    if-eqz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    goto :goto_0

    :cond_0
    mul-float/2addr v4, v6

    :goto_0
    move-object v0, p0

    move v5, p2

    move v3, v4

    move v4, p1

    .line 320
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/HoverSelectorView;->InsideCircle(FFFII)Z

    move-result v3

    move v7, v1

    move v8, v2

    if-eqz v3, :cond_1

    .line 321
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->CENTER_BUTTON:I

    return v1

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->isCloseOrSingle()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    return v9

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    if-eqz v1, :cond_5

    move v10, v9

    .line 327
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v2, v1

    if-ge v10, v2, :cond_5

    .line 328
    aget-object v1, v1, v10

    iget v1, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    .line 329
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v2, v2, v10

    iget v2, v2, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    .line 330
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v3, v3, v10

    iget-boolean v3, v3, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    add-float/2addr v1, v7

    add-float/2addr v2, v8

    .line 333
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/HoverSelectorView;->InsideCircle(FFFII)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->MODE_BASE:I

    :goto_2
    add-int/2addr v1, v10

    return v1

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 338
    :cond_5
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-eqz v1, :cond_7

    move v10, v9

    .line 339
    :goto_4
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    if-ge v10, v1, :cond_7

    .line 340
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v1, v1, v10

    iget v1, v1, Lcom/metamoji/ui/HoverSelectorView$BandButton;->x:F

    add-float/2addr v1, v7

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 341
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v2, v2, v10

    iget v2, v2, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    add-float/2addr v2, v8

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 342
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/HoverSelectorView;->InsideCircle(FFFII)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 343
    sget v1, Lcom/metamoji/ui/HoverSelectorView;->BAND_BASE:I

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 349
    :cond_7
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    mul-float v3, v1, v6

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v1, v7

    move v2, v8

    .line 350
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/HoverSelectorView;->InsideCircle(FFFII)Z

    move-result v6

    const/4 v10, 0x1

    if-eqz v6, :cond_8

    return v10

    .line 353
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->isCloseOrSingle()Z

    move-result v1

    if-eqz v1, :cond_9

    return v9

    .line 356
    :cond_9
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    if-eqz v1, :cond_c

    move v6, v9

    .line 357
    :goto_5
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v2, v1

    if-ge v6, v2, :cond_c

    .line 358
    aget-object v1, v1, v6

    iget v1, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    .line 359
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    .line 360
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v4, v4, v6

    iget-boolean v4, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    add-float/2addr v1, v7

    add-float/2addr v2, v8

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 363
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/HoverSelectorView;->InsideCircle(FFFII)Z

    move-result v1

    if-eqz v1, :cond_b

    return v10

    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 368
    :cond_c
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-eqz v1, :cond_e

    move v6, v9

    .line 369
    :goto_7
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    if-ge v6, v1, :cond_e

    .line 370
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/metamoji/ui/HoverSelectorView$BandButton;->x:F

    add-float/2addr v1, v7

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 371
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    add-float/2addr v2, v8

    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 372
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/HoverSelectorView;->InsideCircle(FFFII)Z

    move-result v1

    if-eqz v1, :cond_d

    return v10

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    return v9
.end method

.method InsideCircle(FFFII)Z
    .locals 0

    int-to-float p4, p4

    sub-float/2addr p4, p1

    int-to-float p1, p5

    sub-float/2addr p1, p2

    mul-float/2addr p4, p4

    mul-float/2addr p1, p1

    add-float/2addr p4, p1

    mul-float/2addr p3, p3

    cmpg-float p1, p4, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method LayoutBand()V
    .locals 8

    const/4 v0, 0x0

    .line 1553
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    .line 1554
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-nez v1, :cond_0

    return-void

    .line 1578
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    if-nez v1, :cond_1

    .line 1579
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    goto :goto_0

    .line 1581
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1585
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v3, 0x5

    if-eq v1, v2, :cond_2

    .line 1586
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getPalletBtnCount(Lcom/metamoji/nt/NtNoteController$NoteMode;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1595
    :goto_1
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-nez v2, :cond_3

    .line 1596
    new-array v2, v3, [Lcom/metamoji/ui/HoverSelectorView$BandButton;

    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    .line 1598
    :cond_3
    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v0, v1, :cond_7

    .line 1603
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    iget v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1604
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 1606
    new-instance v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;

    invoke-direct {v4, p0, v5}, Lcom/metamoji/ui/HoverSelectorView$BandButton;-><init>(Lcom/metamoji/ui/HoverSelectorView;Lcom/metamoji/ui/HoverSelectorView-IA;)V

    .line 1607
    :cond_4
    iput v2, v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;->x:F

    .line 1608
    iput v3, v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    .line 1609
    iget-object v6, v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    .line 1610
    iget-object v6, v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1611
    iput-object v5, v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    .line 1613
    :cond_5
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v5, v6, :cond_6

    .line 1614
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->CreatePenButton(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 1616
    :cond_6
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-static {v5, v0}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/nt/NtNoteController$NoteMode;I)I

    move-result v5

    .line 1617
    iget v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    iget v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_density:F

    invoke-static {v5, v6, v7}, Lcom/metamoji/ui/HoverSelector;->CreatePalletButton(IFF)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    .line 1619
    :goto_3
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aput-object v4, v5, v0

    .line 1620
    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_tate_distance:F

    add-float/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1626
    :cond_7
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->m_updateUnitViewStyle:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    sget-object v3, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->VERTICAL_BAR_LEFT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    if-ne v0, v3, :cond_8

    .line 1627
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    neg-float v0, v0

    goto :goto_4

    :cond_8
    move v0, v2

    .line 1629
    :goto_4
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1630
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    iget v1, v1, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    .line 1631
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1632
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    add-float/2addr v0, v3

    .line 1633
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1635
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1636
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method LayoutBand2()V
    .locals 12

    const/4 v0, 0x0

    .line 1644
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    .line 1645
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-nez v1, :cond_0

    return-void

    .line 1649
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    if-nez v1, :cond_1

    .line 1650
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    goto :goto_0

    .line 1652
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1656
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v3, 0x5

    if-eq v1, v2, :cond_2

    .line 1657
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getPalletBtnCount(Lcom/metamoji/nt/NtNoteController$NoteMode;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1667
    :goto_1
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-nez v2, :cond_3

    .line 1668
    new-array v2, v3, [Lcom/metamoji/ui/HoverSelectorView$BandButton;

    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    .line 1670
    :cond_3
    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    const v2, 0x40490fdb    # (float)Math.PI

    if-ge v1, v3, :cond_4

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    div-float v4, v3, v4

    sub-float v3, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 1685
    iget v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    .line 1686
    iget v6, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_r:F

    :goto_3
    if-ge v0, v1, :cond_8

    int-to-float v7, v0

    mul-float/2addr v7, v4

    sub-float v7, v2, v7

    float-to-double v7, v7

    .line 1689
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 1690
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v9, v6

    mul-float/2addr v7, v6

    .line 1695
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v9, v7, v5, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1697
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v8, v8, v0

    const/4 v10, 0x0

    if-nez v8, :cond_5

    .line 1699
    new-instance v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;

    invoke-direct {v8, p0, v10}, Lcom/metamoji/ui/HoverSelectorView$BandButton;-><init>(Lcom/metamoji/ui/HoverSelectorView;Lcom/metamoji/ui/HoverSelectorView-IA;)V

    .line 1701
    :cond_5
    iput v9, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->x:F

    .line 1702
    iput v7, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    .line 1703
    iget-object v7, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6

    .line 1704
    iget-object v7, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1705
    iput-object v10, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    .line 1707
    :cond_6
    iget-object v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v9, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v7, v9, :cond_7

    .line 1708
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->CreatePenButton(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 1711
    :cond_7
    iget-object v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-static {v7, v0}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/nt/NtNoteController$NoteMode;I)I

    move-result v7

    .line 1712
    iget v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    iget v10, p0, Lcom/metamoji/ui/HoverSelectorView;->_density:F

    invoke-static {v7, v9, v10}, Lcom/metamoji/ui/HoverSelector;->CreatePalletButton(IFF)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v8, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    .line 1714
    :goto_4
    iget-object v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    float-to-double v0, v2

    .line 1718
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v4, v6

    .line 1719
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v6

    .line 1722
    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1723
    new-instance v8, Landroid/graphics/RectF;

    neg-float v9, v6

    invoke-direct {v8, v9, v9, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1724
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, v3, v2

    float-to-double v10, v1

    .line 1725
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 1726
    iget-object v10, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v10, v8, v0, v1}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    sub-float/2addr v6, v5

    float-to-double v0, v3

    .line 1727
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float/2addr v8, v6

    .line 1728
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v6

    .line 1729
    iget-object v11, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v11, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1730
    new-instance v8, Landroid/graphics/RectF;

    add-float/2addr v9, v5

    invoke-direct {v8, v9, v9, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1733
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v2, v3

    float-to-double v1, v2

    .line 1734
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1735
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v0, v1}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 1736
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1737
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method LayoutModeButton()V
    .locals 11

    .line 1745
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 1746
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    goto :goto_0

    .line 1748
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_0
    const/4 v0, 0x0

    .line 1750
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_layout_state:I

    .line 1752
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1754
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1755
    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_2

    .line 1756
    :cond_1
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1760
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    :goto_1
    const/4 v3, 0x1

    if-ltz v2, :cond_4

    .line 1761
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/metamoji/ui/HoverSelectorView$modeButton;->mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1764
    iget-object v6, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    if-ne v1, v5, :cond_3

    .line 1762
    aget-object v3, v6, v2

    iput-boolean v0, v3, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    goto :goto_2

    .line 1764
    :cond_3
    aget-object v5, v6, v2

    iput-boolean v3, v5, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1768
    :cond_4
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingTop:I

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v2, v2

    .line 1773
    iget v5, p0, Lcom/metamoji/ui/HoverSelectorView;->_tate_distance:F

    float-to-int v5, v5

    if-ltz v1, :cond_a

    neg-int v2, v2

    move v7, v2

    move v6, v3

    :goto_3
    const/4 v8, 0x3

    if-ge v6, v8, :cond_6

    sub-int/2addr v1, v5

    if-gez v1, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v7, v5

    goto :goto_3

    .line 1785
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v6, v1

    sub-int/2addr v6, v3

    if-ge v0, v6, :cond_a

    .line 1786
    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    if-nez v1, :cond_7

    goto :goto_5

    .line 1789
    :cond_7
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    .line 1790
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v1, v1, v0

    int-to-float v6, v7

    iput v6, v1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    .line 1791
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v6, :cond_8

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v6, :cond_8

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v6, :cond_8

    .line 1792
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    iget-object v8, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    iget v9, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v6, v8, v9, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_8
    add-int/2addr v7, v5

    if-le v7, v2, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1801
    :cond_a
    :goto_6
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    float-to-int v1, v1

    .line 1802
    :goto_7
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v5, v2

    sub-int/2addr v5, v3

    if-ge v0, v5, :cond_d

    .line 1803
    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    if-nez v2, :cond_b

    goto :goto_8

    .line 1806
    :cond_b
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v2, v2, v0

    iput v4, v2, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    .line 1807
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v2, v2, v0

    int-to-float v1, v1

    iput v1, v2, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    .line 1808
    iget-boolean v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v2, v5, :cond_c

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v2, v5, :cond_c

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v2, v5, :cond_c

    .line 1809
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    iget-object v6, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    iget v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1811
    :cond_c
    iput v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_layout_state:I

    .line 1812
    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_tate_distance:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method LayoutModeButton2()V
    .locals 11

    .line 1821
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 1822
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    goto :goto_0

    .line 1824
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1827
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1829
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1830
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_2

    .line 1831
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1837
    :cond_2
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode_r:F

    .line 1840
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    const v3, 0x40afede0

    :goto_1
    if-ltz v2, :cond_5

    .line 1841
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 1844
    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    if-ne v0, v4, :cond_3

    .line 1842
    aget-object v4, v5, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    goto :goto_2

    .line 1844
    :cond_3
    aget-object v4, v5, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->enable:Z

    .line 1845
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v4, v4, v2

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v1

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-float v7, v7

    iput v7, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    .line 1846
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v4, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    double-to-int v5, v5

    int-to-float v5, v5

    iput v5, v4, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    .line 1847
    iget-boolean v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v4, v5, :cond_4

    .line 1848
    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_shadow:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/metamoji/ui/HoverSelectorView$modeButton;->x:F

    iget-object v6, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/metamoji/ui/HoverSelectorView$modeButton;->y:F

    iget v7, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_4
    const v4, 0x3f490fdb

    sub-float/2addr v3, v4

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method OnTappedCenter()V
    .locals 3

    .line 588
    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_enable:Z

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->closeSelector()V

    return-void

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->openSelector()V

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 591
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 592
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-static {v1, v0}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method ResetBandButtons()V
    .locals 0

    return-void
.end method

.method SelectBand(I)V
    .locals 0

    .line 1098
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    .line 1099
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->UpdateCenterButton()V

    const/4 p1, 0x0

    .line 1100
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    .line 1101
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return-void
.end method

.method SelectEraser(I)V
    .locals 2

    .line 1085
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_eraserSelection:I

    .line 1086
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ERASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    .line 1087
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->SelectBand(I)V

    :cond_0
    return-void
.end method

.method SelectLasso(I)V
    .locals 2

    .line 1091
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_lassoSelection:I

    .line 1092
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    .line 1093
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->SelectBand(I)V

    :cond_0
    return-void
.end method

.method SelectPen(I)V
    .locals 2

    .line 1079
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_penSelection:I

    .line 1080
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    .line 1081
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->SelectBand(I)V

    :cond_0
    return-void
.end method

.method SetMode(Lcom/metamoji/nt/NtNoteController$NoteMode;Z)V
    .locals 1

    .line 617
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 627
    :cond_1
    iput-boolean p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 628
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    goto :goto_2

    .line 618
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne p2, p1, :cond_3

    :goto_1
    return-void

    .line 621
    :cond_3
    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 631
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->updateViewImage()V

    .line 632
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return-void
.end method

.method UpdateCenterButton()V
    .locals 5

    .line 1170
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_2

    .line 1172
    :try_start_0
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_penSelection:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->updateModeImages(I)V

    .line 1173
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1175
    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImage:Landroid/graphics/Bitmap;

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImageHLight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1179
    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImageHLight:Landroid/graphics/Bitmap;

    .line 1182
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v1, v0

    float-to-int v0, v0

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_off:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/metamoji/ui/HoverSelectorView;->modeImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImage:Landroid/graphics/Bitmap;

    .line 1183
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v1, v0

    float-to-int v0, v0

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_on:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/metamoji/ui/HoverSelectorView;->modeImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImageHLight:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1185
    const-string v1, "HS-UpdateCenterButton"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_3

    .line 1188
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v0, v0

    .line 1189
    sget v1, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2, v2}, Lcom/metamoji/ui/HoverCm;->getImage(IIIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1190
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_off:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1191
    invoke-static {v2, v1, v0, v0}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImage:Landroid/graphics/Bitmap;

    .line 1192
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_on:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1193
    invoke-static {v2, v1, v0, v0}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImageHLight:Landroid/graphics/Bitmap;

    return-void

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_4

    .line 1195
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_on:I

    invoke-static {v0}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1196
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->hover_mode_base_off:I

    invoke-static {v1}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1197
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->school_icon_mode_arrange:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1198
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-static {v1, v2, v4, v3}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImage:Landroid/graphics/Bitmap;

    .line 1199
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v3, v1

    float-to-int v1, v1

    invoke-static {v0, v2, v3, v1}, Lcom/metamoji/ui/HoverCm;->margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_centerImageHLight:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method UpdateSelection()V
    .locals 2

    .line 920
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtEraserSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtEraserSettings;

    .line 932
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->SelectEraser(I)V

    return-void

    .line 922
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 926
    :cond_2
    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 927
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->SelectPen(I)V

    return-void
.end method

.method closeSelector()V
    .locals 1

    const/4 v0, 0x0

    .line 610
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 611
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->updateViewImage()V

    .line 612
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return-void
.end method

.method createModePenImage(IFFLcom/metamoji/nt/share/NtPenStyle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1273
    new-instance v2, Lcom/metamoji/cm/Size;

    iget v3, v0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-direct {v2, v4, v3}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 1274
    iget v3, v0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v4, v3

    float-to-int v5, v3

    float-to-int v6, v3

    float-to-int v3, v3

    .line 1277
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1278
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1279
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 1282
    invoke-static/range {p4 .. p4}, Lcom/metamoji/ui/HoverCm;->getPenImageMaskName(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v10, p4

    .line 1283
    invoke-static {v10, v9}, Lcom/metamoji/ui/HoverCm;->getPenImageName(Lcom/metamoji/nt/share/NtPenStyle;Z)I

    move-result v10

    .line 1304
    iget-object v11, v0, Lcom/metamoji/ui/HoverSelectorView;->_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1305
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v11, v9, v9, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1306
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v9, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1307
    invoke-virtual {v6, v8, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1308
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/high16 v4, 0x437f0000    # 255.0f

    if-eqz v1, :cond_0

    .line 1309
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    const-string v5, "gradation"

    move-object/from16 v13, p7

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1310
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1311
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-float v4, v4, p3

    float-to-int v4, v4

    .line 1312
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v4, v5, v8, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    .line 1313
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v4, v2, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v19

    .line 1316
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-direct {v1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1317
    new-instance v2, Landroid/graphics/Point;

    iget v4, v0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v8, v4

    float-to-int v8, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1319
    new-instance v13, Landroid/graphics/LinearGradient;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v14, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v15, v1

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1320
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1321
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1323
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 1324
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 1325
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 1326
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 1327
    iget v9, v2, Lcom/metamoji/cm/Size;->width:I

    int-to-float v9, v9

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    int-to-float v2, v2

    sget-object v18, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v17, v2

    move/from16 v16, v9

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    mul-float v2, p3, v4

    float-to-int v2, v2

    .line 1328
    invoke-static {v2, v1, v5, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1329
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1330
    invoke-virtual {v6, v13, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    const/4 v1, 0x0

    .line 1332
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1334
    iget v1, v0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    float-to-int v2, v1

    float-to-int v1, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1335
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1337
    iget-object v4, v0, Lcom/metamoji/ui/HoverSelectorView;->_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, -0x1

    .line 1338
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1339
    invoke-virtual {v2, v4, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1340
    invoke-virtual {v2, v3, v11, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method createModePenImageWithPenIndex(I)Landroid/graphics/Bitmap;
    .locals 9

    .line 1249
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1253
    :cond_0
    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    .line 1254
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v5

    .line 1256
    invoke-virtual {v5}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v2

    .line 1257
    iget v3, v5, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 1258
    iget v4, v5, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 1259
    iget-object p1, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 1260
    iget-object v6, v5, Lcom/metamoji/nt/share/NtPenStyle;->penId:Ljava/lang/String;

    .line 1261
    invoke-virtual {v5}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v7

    .line 1262
    iget-object v8, v5, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    move-object v1, p0

    .line 1264
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/ui/HoverSelectorView;->createModePenImage(IFFLcom/metamoji/nt/share/NtPenStyle;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getHoverPosition(Landroid/graphics/Rect;)V
    .locals 2

    .line 1901
    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1907
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1908
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1909
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1910
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 1902
    :cond_1
    :goto_0
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1903
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1904
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1905
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public get_restorData()[I
    .locals 5

    const/16 v0, 0x9

    .line 1372
    new-array v0, v0, [I

    .line 1374
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1375
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1376
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_penSelection:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 1377
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_eraserSelection:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 1378
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_lassoSelection:I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 1379
    iget-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 1380
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_w:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v3, :cond_0

    .line 1382
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v1, v3, v4

    :cond_0
    float-to-int v1, v1

    const/4 v3, 0x6

    .line 1385
    aput v1, v0, v3

    .line 1386
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_h:I

    int-to-float v1, v1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 1388
    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v1, v2, v4

    :cond_1
    float-to-int v1, v1

    const/4 v2, 0x7

    .line 1391
    aput v1, v0, v2

    .line 1392
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    return-object v0
.end method

.method isCloseOrCircle()Z
    .locals 2

    .line 288
    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_layoutVertical:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method isCloseOrSingle()Z
    .locals 2

    .line 296
    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->ARRANGE:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method loadSettingsOnSystem()V
    .locals 3

    .line 1861
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1864
    const-string v1, "HoverSelectorPositionLeft"

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_x:I

    .line 1865
    const-string v1, "HoverSelectorPositionTop"

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_y:I

    :cond_0
    return-void
.end method

.method modeImage(III)Landroid/graphics/Bitmap;
    .locals 7

    .line 1208
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1209
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1210
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 1212
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1214
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1215
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1216
    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1217
    iget-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->m_modePenImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, v3, Landroid/graphics/Rect;->right:I

    .line 1219
    iget-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->m_modePenImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    .line 1220
    iget-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->m_modePenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-object v0
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 1

    .line 1948
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-ne v0, p1, :cond_1

    .line 1949
    iput-boolean p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_enable:Z

    if-eqz p2, :cond_0

    .line 1951
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1954
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1956
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void

    .line 1960
    :cond_0
    sget-object p2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    :cond_1
    return-void
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 4

    .line 992
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1068
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->UpdateCenterButton()V

    .line 1069
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return v1

    .line 1063
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->updateLaserPointer()V

    return v1

    .line 1060
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/HoverSelectorView;->updatePenPreview(I)V

    return v1

    .line 1051
    :pswitch_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/HoverSelectorView$7;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/ui/HoverSelectorView$7;-><init>(Lcom/metamoji/ui/HoverSelectorView;I)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v0

    .line 1042
    :pswitch_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/HoverSelectorView$6;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/ui/HoverSelectorView$6;-><init>(Lcom/metamoji/ui/HoverSelectorView;I)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v0

    .line 1033
    :pswitch_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/ui/HoverSelectorView$5;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/ui/HoverSelectorView$5;-><init>(Lcom/metamoji/ui/HoverSelectorView;I)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v0

    .line 994
    :pswitch_6
    iget-boolean p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 995
    invoke-static {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p2

    const/4 v2, -0x1

    .line 996
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    .line 997
    sget-object v2, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4

    const/4 v0, 0x2

    if-eq v2, v0, :cond_3

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    const/4 v0, 0x6

    if-eq v2, v0, :cond_1

    const/4 v0, 0x7

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->UpdateCenterButton()V

    .line 1016
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    :cond_1
    move p1, v1

    goto :goto_0

    .line 1005
    :cond_2
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_lassoSelection:I

    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    goto :goto_0

    .line 1008
    :cond_3
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_eraserSelection:I

    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    goto :goto_0

    .line 1011
    :cond_4
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_penSelection:I

    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    .line 1024
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/HoverSelectorView$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/metamoji/ui/HoverSelectorView$4;-><init>(Lcom/metamoji/ui/HoverSelectorView;Lcom/metamoji/nt/NtNoteController$NoteMode;Z)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 256
    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_wait_layout:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->hoverDraw(Landroid/graphics/Canvas;)V

    .line 267
    iget-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->palette:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 269
    :goto_0
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    if-ge v0, v1, :cond_2

    .line 270
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    if-ne v0, v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/metamoji/ui/HoverSelectorView$BandButton;->x:F

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_focusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 272
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/metamoji/ui/HoverSelectorView$BandButton;->y:F

    iget-object v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_focusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_band_y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 273
    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_focusImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 950
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 951
    iget-boolean p2, p1, Lcom/metamoji/ui/HoverSelectorView;->_initialize:Z

    if-nez p2, :cond_0

    .line 953
    invoke-direct {p0}, Lcom/metamoji/ui/HoverSelectorView;->recalcCommandPosition()V

    const/4 p2, 0x1

    .line 954
    iput-boolean p2, p1, Lcom/metamoji/ui/HoverSelectorView;->_initialize:Z

    .line 956
    :cond_0
    iget-boolean p2, p1, Lcom/metamoji/ui/HoverSelectorView;->_wait_layout:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 957
    iput-boolean p3, p1, Lcom/metamoji/ui/HoverSelectorView;->_wait_layout:Z

    .line 959
    :cond_1
    invoke-direct {p0, p3}, Lcom/metamoji/ui/HoverSelectorView;->setposition(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 945
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    iget p2, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 964
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 421
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->isNotePrepared()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 431
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    sub-int/2addr p1, v1

    .line 432
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    sub-int/2addr v1, v2

    .line 434
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/HoverSelectorView;->HitTest(II)I

    move-result v2

    .line 435
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-ne v2, v4, :cond_2

    return v4

    .line 442
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_16

    const/4 v3, 0x2

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_3

    goto/16 :goto_2

    .line 444
    :cond_3
    iget p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_touchButton:I

    sget v5, Lcom/metamoji/ui/HoverSelectorView;->CENTER_BUTTON:I

    if-ne p2, v5, :cond_4

    iget v6, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    if-ne v6, v3, :cond_4

    .line 445
    iget p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_x:F

    float-to-int p2, p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    .line 446
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_y:F

    float-to-int p1, p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    .line 447
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->setposition(Z)V

    goto/16 :goto_2

    :cond_4
    if-lez p2, :cond_17

    .line 449
    iget v6, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    if-ne v6, v4, :cond_6

    if-ne p2, v5, :cond_5

    .line 451
    iget p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_x:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_y:F

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-direct {p0, p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->distance(FF)F

    move-result p1

    iget p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_buttonRadius:F

    mul-float/2addr p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_17

    .line 453
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_x:F

    iget p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_x:F

    .line 454
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_y:F

    iget p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_y:F

    .line 455
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    .line 456
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    .line 457
    iput v3, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    goto/16 :goto_2

    :cond_5
    if-eq p2, v2, :cond_17

    .line 460
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    .line 461
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    .line 462
    iput v3, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    goto/16 :goto_2

    :cond_6
    if-ne v6, v3, :cond_17

    if-ne p2, v2, :cond_17

    .line 465
    invoke-direct {p0, v2}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    .line 466
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    .line 467
    iput v4, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    goto/16 :goto_2

    .line 484
    :cond_7
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touchButton:I

    sget p2, Lcom/metamoji/ui/HoverSelectorView;->CENTER_BUTTON:I

    if-ne p1, p2, :cond_9

    .line 485
    iget p1, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    if-ne p1, v4, :cond_8

    .line 486
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->playSoundEffect(I)V

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->OnTappedCenter()V

    goto :goto_0

    .line 490
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->updateViewImage()V

    .line 491
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->saveSettingsOnSystem()V

    .line 493
    :goto_0
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_touchButton:I

    goto/16 :goto_1

    .line 494
    :cond_9
    sget p2, Lcom/metamoji/ui/HoverSelectorView;->MODE_BASE:I

    if-lt p1, p2, :cond_a

    if-ne p1, v2, :cond_15

    .line 496
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->playSoundEffect(I)V

    .line 499
    sget p1, Lcom/metamoji/ui/HoverSelectorView;->MODE_BASE:I

    sub-int/2addr v2, p1

    .line 500
    iget-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->modebuttons:[Lcom/metamoji/ui/HoverSelectorView$modeButton;

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/metamoji/ui/HoverSelectorView$modeButton;->mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    .line 502
    new-instance p2, Lcom/metamoji/cm/CmContext;

    invoke-direct {p2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 503
    const-string v1, "index"

    invoke-virtual {p2, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-static {p1, p2}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_1

    :cond_a
    if-ne p1, v2, :cond_15

    .line 508
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->playSoundEffect(I)V

    .line 509
    sget p1, Lcom/metamoji/ui/HoverSelectorView;->BAND_BASE:I

    sub-int/2addr v2, p1

    .line 510
    sget-object p1, Lcom/metamoji/ui/HoverSelectorView$9;->$SwitchMap$com$metamoji$nt$NtNoteController$NoteMode:[I

    iget-object p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x4

    if-eq p1, v4, :cond_14

    const/4 v1, 0x3

    if-eq p1, v3, :cond_12

    if-eq p1, v1, :cond_c

    if-eq p1, p2, :cond_b

    goto :goto_1

    .line 563
    :cond_b
    new-instance p1, Lcom/metamoji/ui/HoverSelectorView$3;

    invoke-direct {p1, p0, v2}, Lcom/metamoji/ui/HoverSelectorView$3;-><init>(Lcom/metamoji/ui/HoverSelectorView;I)V

    .line 568
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTRUBBERBANDKIND:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    :cond_c
    const/4 p1, 0x0

    if-eqz v2, :cond_11

    if-eq v2, v4, :cond_10

    if-eq v2, v3, :cond_f

    if-eq v2, v1, :cond_e

    if-eq v2, p2, :cond_d

    goto :goto_1

    .line 557
    :cond_d
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_INPUTSTYLE_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    .line 552
    :cond_e
    iget-boolean p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_contextopen:Z

    if-nez p2, :cond_15

    .line 553
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_TEXT_SHOW_CONTEXT_MENU:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    .line 549
    :cond_f
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_TOGGLE_IME_AND_MAZEC:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    .line 546
    :cond_10
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_SMALLER:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    .line 543
    :cond_11
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_FONTSIZE_BIGGER:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    :cond_12
    if-ltz v2, :cond_13

    if-ge v2, v1, :cond_13

    .line 524
    new-instance p1, Lcom/metamoji/ui/HoverSelectorView$2;

    invoke-direct {p1, p0, v2}, Lcom/metamoji/ui/HoverSelectorView$2;-><init>(Lcom/metamoji/ui/HoverSelectorView;I)V

    .line 529
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTERASER:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto :goto_1

    .line 531
    :cond_13
    invoke-static {}, Lcom/metamoji/ui/HoverSelectorView;->pageClearWithMessage()V

    goto :goto_1

    :cond_14
    if-ltz v2, :cond_15

    if-gt v2, p2, :cond_15

    .line 513
    new-instance p1, Lcom/metamoji/ui/HoverSelectorView$1;

    invoke-direct {p1, p0, v2}, Lcom/metamoji/ui/HoverSelectorView$1;-><init>(Lcom/metamoji/ui/HoverSelectorView;I)V

    .line 518
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    invoke-static {p2, p1}, Lcom/metamoji/ui/HoverSelectorView;->ExecCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 576
    :cond_15
    :goto_1
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    .line 577
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    .line 578
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_touchButton:I

    .line 579
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    goto :goto_2

    .line 472
    :cond_16
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->isCurrentPopupVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_contextopen:Z

    int-to-float p1, p1

    .line 473
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_x:F

    int-to-float p1, v1

    .line 474
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_touch_y:F

    .line 478
    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_touchButton:I

    .line 479
    invoke-direct {p0, v2}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    .line 480
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    .line 481
    iput v4, p0, Lcom/metamoji/ui/HoverSelectorView;->touchstate:I

    :cond_17
    :goto_2
    return v4
.end method

.method openSelector()V
    .locals 1

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    .line 605
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->updateViewImage()V

    .line 606
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return-void
.end method

.method positionAdjust()V
    .locals 5

    .line 1529
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    .line 1530
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    .line 1532
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    .line 1535
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 1538
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 1539
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 1541
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingTop:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 1542
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_limitBoundary:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingTop:I

    add-int/2addr v1, v2

    .line 1544
    :cond_3
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    .line 1545
    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    return-void
.end method

.method public preLayout(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 1492
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1493
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1494
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1495
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parentRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1497
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingRight:I

    sub-int/2addr v0, v1

    .line 1498
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 1499
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_w:I

    if-nez v1, :cond_1

    .line 1500
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_x:I

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    .line 1501
    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_x:I

    const/16 v1, 0x41

    .line 1502
    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_y:I

    :cond_0
    int-to-float v1, v0

    .line 1505
    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v1, p2

    .line 1506
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_y:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    .line 1510
    invoke-direct {p0}, Lcom/metamoji/ui/HoverSelectorView;->recalcCommandPosition()V

    .line 1515
    :cond_1
    iput v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_w:I

    .line 1516
    iput p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_h:I

    .line 1518
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->positionAdjust()V

    const/4 p2, 0x0

    .line 1521
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1522
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1523
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1524
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 659
    invoke-direct {p0}, Lcom/metamoji/ui/HoverSelectorView;->recalcCommandPosition()V

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_wait_layout:Z

    .line 661
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->postInvalidate()V

    .line 662
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->setposition(Z)V

    return-void
.end method

.method public resume_restorData([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1353
    aget v1, p1, v0

    invoke-static {v1}, Lcom/metamoji/nt/NtNoteController$NoteMode;->valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    const/4 v1, 0x1

    .line 1354
    aget v2, p1, v1

    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandSelection:I

    const/4 v2, 0x2

    .line 1355
    aget v2, p1, v2

    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_penSelection:I

    const/4 v2, 0x3

    .line 1356
    aget v2, p1, v2

    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_eraserSelection:I

    const/4 v2, 0x4

    .line 1357
    aget v2, p1, v2

    iput v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_lassoSelection:I

    const/4 v2, 0x5

    .line 1358
    aget v2, p1, v2

    if-nez v2, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_open:Z

    const/4 v1, 0x6

    .line 1359
    aget v1, p1, v1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_x:I

    const/4 v1, 0x7

    .line 1360
    aget v1, p1, v1

    iput v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_ratio_y:I

    .line 1362
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_initialize:Z

    const/16 v0, 0x8

    .line 1363
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->setVisibility(I)V

    return-void
.end method

.method saveSettingsOnSystem()V
    .locals 5

    .line 1875
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1878
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_w:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v3, :cond_0

    .line 1880
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    mul-float v1, v3, v4

    .line 1883
    :cond_0
    const-string v3, "HoverSelectorPositionLeft"

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 1884
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_parent_h:I

    int-to-float v1, v1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 1886
    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_box_y:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float v1, v2, v4

    .line 1890
    :cond_1
    const-string v2, "HoverSelectorPositionTop"

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method updateBandButtonImage()V
    .locals 5

    .line 1126
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1132
    :goto_1
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    if-ge v0, v1, :cond_3

    .line 1133
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1135
    iget-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    .line 1137
    :cond_2
    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-static {v1, v0}, Lcom/metamoji/ui/HoverCm;->getPalletBtnResId(Lcom/metamoji/nt/NtNoteController$NoteMode;I)I

    move-result v1

    .line 1138
    iget-object v2, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->_button_w:F

    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_density:F

    invoke-static {v1, v3, v4}, Lcom/metamoji/ui/HoverSelector;->CreatePalletButton(IFF)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1141
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return-void
.end method

.method updateLaserPointer()V
    .locals 0

    .line 1162
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->UpdateCenterButton()V

    .line 1163
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return-void
.end method

.method updateModeImages(I)V
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->m_modePenImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1235
    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->m_modePenImage:Landroid/graphics/Bitmap;

    .line 1238
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->createModePenImageWithPenIndex(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/HoverSelectorView;->m_modePenImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1240
    const-string v0, "HS-updateModeImages"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iput-object v1, p0, Lcom/metamoji/ui/HoverSelectorView;->m_modePenImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updatePaddingRight(I)V
    .locals 0

    .line 1936
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingRight:I

    return-void
.end method

.method public updatePaddingTop(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1941
    iput p2, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingTop:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1943
    iput p1, p0, Lcom/metamoji/ui/HoverSelectorView;->_paddingTop:I

    return-void
.end method

.method updatePenPreview(I)V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_mode:Lcom/metamoji/nt/NtNoteController$NoteMode;

    sget-object v1, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v1, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandcount:I

    if-ge p1, v1, :cond_1

    .line 1149
    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1151
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_bandButtons:[Lcom/metamoji/ui/HoverSelectorView$BandButton;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->CreatePenButton(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/HoverSelectorView$BandButton;->bitmap:Landroid/graphics/Bitmap;

    .line 1156
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->UpdateCenterButton()V

    const/4 p1, 0x0

    .line 1157
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HoverSelectorView;->makeHoverImage(I)V

    .line 1158
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->invalidate()V

    return-void
.end method

.method public updateViewImage()V
    .locals 5

    .line 639
    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    .line 640
    iget v1, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    .line 641
    iget v2, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    .line 642
    iget v3, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    .line 644
    invoke-direct {p0}, Lcom/metamoji/ui/HoverSelectorView;->recalcCommandPosition()V

    .line 645
    iget v4, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_x:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_hover_off_y:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_WIDTH:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/metamoji/ui/HoverSelectorView;->HOVER_HEIGHT:I

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 650
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->setposition(Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 646
    iput-boolean v0, p0, Lcom/metamoji/ui/HoverSelectorView;->_wait_layout:Z

    .line 647
    invoke-virtual {p0}, Lcom/metamoji/ui/HoverSelectorView;->postInvalidate()V

    .line 648
    invoke-direct {p0, v0}, Lcom/metamoji/ui/HoverSelectorView;->setposition(Z)V

    return-void
.end method
