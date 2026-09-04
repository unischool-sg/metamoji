.class public Lcom/metamoji/ui/CustomMenuView$MenuItemView;
.super Landroid/view/View;
.source "CustomMenuView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/CustomMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuItemView"
.end annotation


# instance fields
.field private _ispush:Z

.field private _ispush_inside:Z

.field private _item:Lcom/metamoji/ui/UiMenuItem;

.field private _layoutheight:I

.field private _layouttextleft:I

.field private _layoutwidth:I

.field private _menuEventListener:Lcom/metamoji/ui/MenuEventListener;

.field private _normal:Landroid/graphics/Bitmap;

.field private _push:Landroid/graphics/Bitmap;

.field private _realrect:Landroid/graphics/Rect;

.field private _style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

.field private _tmpRect:Landroid/graphics/RectF;

.field private isContextMenu:Z

.field final synthetic this$0:Lcom/metamoji/ui/CustomMenuView;


# direct methods
.method static bridge synthetic -$$Nest$fget_ispush(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_item(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)Lcom/metamoji/ui/UiMenuItem;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_style(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_ispush_inside(Lcom/metamoji/ui/CustomMenuView$MenuItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1302
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    .line 1303
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 1191
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->isContextMenu:Z

    .line 1194
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    .line 1195
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    .line 1207
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_tmpRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 1209
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    .line 1304
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1305
    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    .line 1306
    sget-object p3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 1307
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    if-nez p3, :cond_0

    .line 1308
    sget-object p3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    goto :goto_0

    .line 1309
    :cond_0
    invoke-virtual {p3}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 1310
    invoke-static {p1}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fget_context(Lcom/metamoji/ui/CustomMenuView;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 1312
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiMenuItem;->get_captionid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1314
    :catch_0
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    const-string/jumbo v0, "\u6587\u5b57\u5217\u304c\u306a\u3044\uff1f"

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 1318
    :cond_1
    :goto_0
    iget-object p3, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->getTextLayoutLeftPos(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layouttextleft:I

    .line 1319
    iget-object p3, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/ui/menu/MenuUtils;->getItemW(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    .line 1320
    iget-object p1, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p1, p3}, Lcom/metamoji/ui/menu/MenuUtils;->getItemH(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutheight:I

    .line 1321
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1322
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1323
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1324
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutheight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x1

    .line 1325
    iput-boolean p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->isContextMenu:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;IILcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1236
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    .line 1237
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 1191
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->isContextMenu:Z

    .line 1194
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    .line 1195
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1198
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    .line 1207
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_tmpRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 1209
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    .line 1238
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1240
    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    .line 1241
    iput-object p6, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 1242
    invoke-virtual {p3}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object p2

    sget-object p5, Lcom/metamoji/ui/PopupCommand;->SUBMENU:Lcom/metamoji/ui/PopupCommand;

    if-ne p2, p5, :cond_0

    .line 1244
    sget-object p2, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASSUBMENUS:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 1246
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {p2}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {p2}, Lcom/metamoji/ui/UiMenuItem;->get_captionid()I

    move-result p2

    if-eqz p2, :cond_1

    .line 1247
    invoke-static {p1}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fget_context(Lcom/metamoji/ui/CustomMenuView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1248
    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {p5}, Lcom/metamoji/ui/UiMenuItem;->get_captionid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    :cond_1
    if-lez p4, :cond_2

    .line 1252
    sget-object p2, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 1255
    :cond_2
    iget-object p2, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    iget-object p5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p2, p4, p5}, Lcom/metamoji/ui/menu/MenuUtils;->getTextLayoutLeftPos(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layouttextleft:I

    .line 1256
    invoke-virtual {p3}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object p2

    sget-object p4, Lcom/metamoji/ui/UiMenuItem$MenuKind;->SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne p2, p4, :cond_3

    const/16 p2, 0x1e

    .line 1257
    iput p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutheight:I

    goto :goto_0

    .line 1259
    :cond_3
    iget-object p2, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p2, p4}, Lcom/metamoji/ui/menu/MenuUtils;->getItemH(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutheight:I

    .line 1261
    :goto_0
    iget-object p1, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/ui/menu/MenuUtils;->getItemW(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    .line 1262
    sget-object p1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->UNDO_REDO_COMBO_MENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne p6, p1, :cond_4

    const/high16 p1, 0x430c0000    # 140.0f

    goto :goto_1

    :cond_4
    const/high16 p1, 0x437a0000    # 250.0f

    :goto_1
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    .line 1264
    iget p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    if-ge p2, p1, :cond_5

    .line 1265
    iput p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    :cond_5
    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/CustomMenuView;Landroid/content/Context;Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1277
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    .line 1278
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 1191
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->isContextMenu:Z

    .line 1194
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    .line 1195
    iput-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1198
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    .line 1207
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_tmpRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 1209
    iput-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    .line 1279
    invoke-virtual {p0, p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1280
    iput-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    .line 1281
    iput-object p4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    .line 1282
    invoke-virtual {p3}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1283
    invoke-static {p1}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fget_context(Lcom/metamoji/ui/CustomMenuView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1284
    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {p3}, Lcom/metamoji/ui/UiMenuItem;->get_captionid()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 1287
    :cond_0
    iget-object p2, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p2, p3, p4}, Lcom/metamoji/ui/menu/MenuUtils;->getTextLayoutLeftPos(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layouttextleft:I

    .line 1288
    iget-object p2, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object p3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    iget-object p4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p2, p3, p4}, Lcom/metamoji/ui/menu/MenuUtils;->getItemW(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    .line 1289
    iget-object p1, p1, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/menu/MenuUtils;->getItemH(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutheight:I

    const/high16 p1, 0x430c0000    # 140.0f

    .line 1290
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    float-to-int p1, p1

    .line 1291
    iget p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    if-ge p2, p1, :cond_1

    .line 1292
    iput p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    :cond_1
    return-void
.end method


# virtual methods
.method public GetMenuItem()Lcom/metamoji/ui/UiMenuItem;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    return-object v0
.end method

.method public clearState()V
    .locals 2

    .line 1598
    iget-boolean v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1599
    iput-boolean v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    .line 1600
    iput-boolean v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1601
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/CustomMenuView;->setPush(Z)V

    .line 1602
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setBackgroundColor(I)V

    .line 1603
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->invalidate()V

    :cond_0
    return-void
.end method

.method public desiredSizeByStyle(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I
    .locals 2

    .line 1329
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v0, v0, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ui/menu/MenuUtils;->getItemW(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)I

    move-result p1

    return p1
.end method

.method public get_item()Lcom/metamoji/ui/UiMenuItem;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    return-object v0
.end method

.method public get_realrect()Landroid/graphics/Rect;
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public get_style()Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    return-object v0
.end method

.method public isMore()Z
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public is_ispush()Z
    .locals 1

    .line 1594
    iget-boolean v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    return v0
.end method

.method public layoutByStyle(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1334
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1335
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_normal:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_push:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 1337
    iget-boolean v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1340
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v2, v2, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1343
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    if-eqz v1, :cond_c

    .line 1344
    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/high16 v3, 0x41000000    # 8.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v1, :cond_6

    .line 1346
    iget v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layouttextleft:I

    int-to-float v4, v4

    .line 1347
    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v7}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fgetFONT_SIZE(Lcom/metamoji/ui/CustomMenuView;)F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v8, v8, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 1349
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v7}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fgetFONT_SIZE(Lcom/metamoji/ui/CustomMenuView;)F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v8, v8, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_3

    .line 1352
    iget-object v9, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v9, v9, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1353
    iget-object v9, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v9, v9, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    add-float/2addr v9, v4

    .line 1354
    iget-object v10, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    goto :goto_1

    :cond_2
    float-to-double v9, v7

    const-wide v11, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v9, v11

    double-to-float v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1361
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {v7}, Lcom/metamoji/ui/menu/MenuUtils;->isActionMenuColor(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1362
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v7, v7, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1364
    :cond_4
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v7}, Lcom/metamoji/ui/UiMenuItem;->is_enabled()Z

    move-result v7

    .line 1367
    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    if-eqz v7, :cond_5

    .line 1365
    iget-object v7, v8, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1367
    :cond_5
    iget-object v7, v8, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    const v8, -0x333334

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1370
    :goto_2
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v7, v7, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1372
    :cond_6
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_subTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1374
    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v4, v4, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .line 1375
    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v5}, Lcom/metamoji/ui/UiMenuItem;->get_subTitleTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1377
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v7, v7, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1378
    :cond_7
    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v7}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fgetFONT_SIZE(Lcom/metamoji/ui/CustomMenuView;)F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v8, v8, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 1379
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v7, v7, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v8}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fgetFONT_SIZE(Lcom/metamoji/ui/CustomMenuView;)F

    move-result v8

    iget-object v9, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v9, v9, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1380
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v7, v7, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1381
    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v8, v8, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    sget v8, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_R:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v9, v9, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 1382
    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v8, v8, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1383
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1385
    :cond_8
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->is_colorEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1386
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_Color()I

    move-result v1

    .line 1387
    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_tmpRect:Landroid/graphics/RectF;

    .line 1388
    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sget v7, Lcom/metamoji/ui/menu/MenuUtils;->MNU_TITLE_MARGIN_R:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v8, v8, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 1389
    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v7, v7, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v7, v7, Lcom/metamoji/ui/menu/MenuUtils;->COLOR_WIDTH:F

    sub-float/2addr v5, v7

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 1391
    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 1392
    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v7, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v7

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 1397
    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v5, v5, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1398
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v1, v1, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {p1, v4, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1400
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->is_colorNormal()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1401
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v5}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fgetFONT_SIZE(Lcom/metamoji/ui/CustomMenuView;)F

    move-result v5

    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v7, v7, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    .line 1402
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v3, v3, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v5}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fgetFONT_SIZE(Lcom/metamoji/ui/CustomMenuView;)F

    move-result v5

    iget-object v7, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v7, v7, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1403
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v3, v3, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1405
    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v3, v3, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v4}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fget_normalstring(Lcom/metamoji/ui/CustomMenuView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v3, v3, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget v3, v3, Lcom/metamoji/ui/menu/MenuUtils;->SPACE:F

    sub-float/2addr v2, v3

    .line 1406
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    invoke-static {v3}, Lcom/metamoji/ui/CustomMenuView;->-$$Nest$fget_normalstring(Lcom/metamoji/ui/CustomMenuView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v4, v4, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1409
    :cond_9
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_LEFT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    const/16 v7, 0xff

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v1, v2, :cond_b

    .line 1410
    :cond_a
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v1, v1, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v1, v6

    .line 1411
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v2, v2, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x70

    const/16 v4, 0x7c

    const/16 v5, 0x68

    invoke-static {v7, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1412
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v2, v2, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1413
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v5, v1, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    move v1, v2

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1415
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiMenuItem;->get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    if-ne v0, v1, :cond_c

    .line 1416
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v0, v0, Lcom/metamoji/ui/CustomMenuView;->_density:F

    mul-float/2addr v0, v6

    .line 1417
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v1, v1, Lcom/metamoji/ui/CustomMenuView;->_density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    .line 1418
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v2, v2, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xc8

    invoke-static {v7, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1419
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v2, v2, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1420
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v6

    .line 1421
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v5, v0, Lcom/metamoji/ui/CustomMenuView;->paint:Landroid/graphics/Paint;

    move v4, v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1434
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1436
    iget-boolean v0, p1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->isContextMenu:Z

    if-nez v0, :cond_0

    .line 1437
    iget-object v0, p1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1438
    iget-object v0, p1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1439
    iget-object v0, p1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 1440
    iget-object p2, p1, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 1443
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/ui/CustomMenuView$MenuItemView$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView$1;-><init>(Lcom/metamoji/ui/CustomMenuView$MenuItemView;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1429
    iget p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutwidth:I

    iget p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_layoutheight:I

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v2, 0xff

    const/16 v3, 0xd9

    const/4 v4, 0x1

    if-eqz p2, :cond_10

    const/4 v5, 0x0

    if-eq p2, v4, :cond_6

    const/4 v6, 0x2

    if-eq p2, v6, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 1569
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    if-eqz p1, :cond_12

    .line 1570
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->clearState()V

    goto/16 :goto_0

    .line 1501
    :cond_1
    iget-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    if-eqz p2, :cond_12

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-ge p2, v1, :cond_4

    .line 1503
    :cond_2
    iput-boolean v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1504
    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {p2}, Lcom/metamoji/ui/menu/MenuUtils;->isActionMenuColor(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1505
    invoke-virtual {p0, v5}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setBackgroundColor(I)V

    .line 1507
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->invalidate()V

    :cond_4
    if-ltz v0, :cond_12

    if-ltz v1, :cond_12

    .line 1509
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lt p2, v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lt p1, v1, :cond_12

    .line 1510
    iput-boolean v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1511
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {p1}, Lcom/metamoji/ui/menu/MenuUtils;->isActionMenuColor(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1512
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setBackgroundColor(I)V

    .line 1514
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->invalidate()V

    goto/16 :goto_0

    .line 1531
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 1532
    iget-boolean p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    if-eqz p1, :cond_f

    iget-boolean p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    if-eqz p2, :cond_f

    .line 1533
    iput-boolean v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    .line 1534
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {p1}, Lcom/metamoji/ui/menu/MenuUtils;->isActionMenuColor(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1535
    invoke-virtual {p0, v5}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setBackgroundColor(I)V

    .line 1537
    :cond_7
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object p1, p1, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p1, v5}, Lcom/metamoji/ui/CustomMenuView;->setPush(Z)V

    .line 1538
    invoke-virtual {p0, v5}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->playSoundEffect(I)V

    .line 1539
    iget-boolean p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->isContextMenu:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_b

    .line 1541
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->is_haveSubMenu()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1542
    :cond_8
    iput-boolean v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1544
    :cond_9
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    if-eqz p1, :cond_a

    .line 1545
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-interface {p1, p0, v0, p2}, Lcom/metamoji/ui/MenuEventListener;->onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1547
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->invalidate()V

    goto/16 :goto_0

    .line 1549
    :cond_b
    iput-boolean v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1550
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/PopupCommand;->SUBMENU:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, v0, :cond_c

    .line 1551
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {p2}, Lcom/metamoji/ui/UiMenuItem;->get_menus()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_caption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/ui/CustomMenuView;->chgNextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Ljava/lang/String;)V

    goto :goto_0

    .line 1552
    :cond_c
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/PopupCommand;->SUBMENU_BACK:Lcom/metamoji/ui/PopupCommand;

    if-ne p1, v0, :cond_d

    .line 1553
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object p2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/CustomMenuView;->chgBackMenu(Lcom/metamoji/ui/MenuEventListener;)V

    goto :goto_0

    .line 1555
    :cond_d
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    if-eqz p1, :cond_12

    .line 1556
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v0, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->UNDO_REDO_COMBO_MENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq p1, v0, :cond_e

    .line 1557
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object p1, p1, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    .line 1559
    :cond_e
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_options()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/metamoji/ui/MenuEventListener;->onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V

    return v4

    :cond_f
    if-eqz p1, :cond_12

    .line 1565
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->clearState()V

    goto :goto_0

    .line 1519
    :cond_10
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 1520
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object p1, p1, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView;->isPush()Z

    move-result p1

    if-nez p1, :cond_12

    .line 1521
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object p1, p1, Lcom/metamoji/ui/CustomMenuView;->_viewgroup:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p1, v4}, Lcom/metamoji/ui/CustomMenuView;->setPush(Z)V

    .line 1522
    iput-boolean v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush:Z

    .line 1523
    iput-boolean v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_ispush_inside:Z

    .line 1524
    iget-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {p1}, Lcom/metamoji/ui/menu/MenuUtils;->isActionMenuColor(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1525
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->setBackgroundColor(I)V

    .line 1527
    :cond_11
    invoke-virtual {p0}, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->invalidate()V

    :cond_12
    :goto_0
    return v4
.end method

.method public setMenuEventListener(Lcom/metamoji/ui/MenuEventListener;)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_menuEventListener:Lcom/metamoji/ui/MenuEventListener;

    return-void
.end method

.method public set_left(I)V
    .locals 2

    .line 1489
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1490
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public set_realrect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public set_style(Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;)V
    .locals 0

    .line 1590
    iput-object p1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    return-void
.end method

.method updateImage()V
    .locals 12

    .line 1452
    iget-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 1453
    iget-object v1, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_realrect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 1455
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget v2, v2, Lcom/metamoji/ui/CustomMenuView;->_density:F

    div-float v2, v0, v2

    float-to-int v8, v2

    .line 1456
    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->CTX_H:I

    .line 1457
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v4, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v3, v4, :cond_1

    .line 1458
    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->SMNU_H:I

    :cond_0
    :goto_0
    move v9, v2

    goto :goto_1

    .line 1459
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v4, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v4, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v4, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASSUBMENUS:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    sget-object v4, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    if-ne v3, v4, :cond_0

    .line 1463
    :cond_2
    sget v2, Lcom/metamoji/ui/menu/MenuUtils;->MNU_H:I

    goto :goto_0

    .line 1467
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v3, v2, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/metamoji/ui/menu/MenuUtils;->CreateBitmapImage2(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;IIIIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_normal:Landroid/graphics/Bitmap;

    .line 1468
    iget-object v2, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->this$0:Lcom/metamoji/ui/CustomMenuView;

    iget-object v3, v2, Lcom/metamoji/ui/CustomMenuView;->_mutl:Lcom/metamoji/ui/menu/MenuUtils;

    iget-object v4, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_item:Lcom/metamoji/ui/UiMenuItem;

    iget-object v5, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_style:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/metamoji/ui/menu/MenuUtils;->CreateBitmapImage2(Lcom/metamoji/ui/UiMenuItem;Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;IIIIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_push:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 1470
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_normal:Landroid/graphics/Bitmap;

    .line 1471
    iput-object v0, p0, Lcom/metamoji/ui/CustomMenuView$MenuItemView;->_push:Landroid/graphics/Bitmap;

    return-void
.end method
