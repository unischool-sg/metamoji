.class public Lcom/metamoji/ui/UiMenuItem;
.super Ljava/lang/Object;
.source "UiMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiMenuItem$MenuKind;,
        Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;
    }
.end annotation


# instance fields
.field private _Color:I

.field private _ColorEnable:Z

.field private _ColorNormal:Z

.field private _NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

.field private _NormalIcon_resid:I

.field private _PushIcon_resid:I

.field private _caption:Ljava/lang/String;

.field private _captionid:I

.field private _checkState:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

.field private _command:Ljava/lang/Object;

.field private _customView:Landroid/view/View;

.field private _haveSubMenu:Z

.field private _isEnabled:Z

.field private _isSubMenu:Z

.field private _kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field private _menus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private _options:Ljava/lang/Object;

.field private _subTitle:Ljava/lang/String;

.field private _subTitleTypeface:Landroid/graphics/Typeface;

.field public tag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 71
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;I)V
    .locals 2

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 147
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 150
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;III)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 169
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 172
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 173
    invoke-virtual {p0, p5}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 174
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 140
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 111
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 114
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 115
    invoke-virtual {p0, p5}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 116
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 94
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 98
    invoke-virtual {p0, p5}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 99
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 81
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 82
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 161
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 164
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 186
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 188
    iput-object p3, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    .line 189
    sget-object p1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->CUSTOM_VIEW:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 190
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 154
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 178
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_drawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;III)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v1, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 130
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_menus(Ljava/util/ArrayList;)V

    .line 131
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SUBMENU:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 133
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 134
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiMenuItem;->set_haveSubMenu(Z)V

    .line 136
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    .line 67
    iput-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    .line 74
    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    iput-object v1, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 120
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_menus(Ljava/util/ArrayList;)V

    .line 121
    sget-object p1, Lcom/metamoji/ui/PopupCommand;->SUBMENU:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 124
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiMenuItem;->set_haveSubMenu(Z)V

    .line 126
    invoke-direct {p0}, Lcom/metamoji/ui/UiMenuItem;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 194
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_HIDDEN:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_ColorEnable:Z

    return-void
.end method


# virtual methods
.method public get_Color()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/metamoji/ui/UiMenuItem;->_Color:I

    return v0
.end method

.method public get_NormalIcon_drawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public get_NormalIcon_resid()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_resid:I

    return v0
.end method

.method public get_PushIcon_resid()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/metamoji/ui/UiMenuItem;->_PushIcon_resid:I

    return v0
.end method

.method public get_caption()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    return-object v0
.end method

.method public get_captionid()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/metamoji/ui/UiMenuItem;->_captionid:I

    return v0
.end method

.method public get_checkState()Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_checkState:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    return-object v0
.end method

.method public get_command()Ljava/lang/Object;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_command:Ljava/lang/Object;

    return-object v0
.end method

.method public get_customView()Landroid/view/View;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_customView:Landroid/view/View;

    return-object v0
.end method

.method public get_kind()Lcom/metamoji/ui/UiMenuItem$MenuKind;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    return-object v0
.end method

.method public get_menus()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_menus:Ljava/util/ArrayList;

    return-object v0
.end method

.method public get_options()Ljava/lang/Object;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_options:Ljava/lang/Object;

    return-object v0
.end method

.method public get_subTitle()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public get_subTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/metamoji/ui/UiMenuItem;->_subTitleTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public is_colorEnable()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_ColorEnable:Z

    return v0
.end method

.method public is_colorNormal()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_ColorNormal:Z

    return v0
.end method

.method public is_enabled()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    return v0
.end method

.method public is_haveSubMenu()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    return v0
.end method

.method public is_isSubMenu()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    return v0
.end method

.method public set_NormalIcon_drawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public set_NormalIcon_resid(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/metamoji/ui/UiMenuItem;->_NormalIcon_resid:I

    return-void
.end method

.method public set_PushIcon_resid(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/metamoji/ui/UiMenuItem;->_PushIcon_resid:I

    return-void
.end method

.method public set_caption(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_caption:Ljava/lang/String;

    return-void
.end method

.method public set_captionid(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/metamoji/ui/UiMenuItem;->_captionid:I

    return-void
.end method

.method public set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_checkState:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    return-void
.end method

.method public set_color(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_ColorEnable:Z

    .line 315
    iput p1, p0, Lcom/metamoji/ui/UiMenuItem;->_Color:I

    .line 316
    iput-boolean p2, p0, Lcom/metamoji/ui/UiMenuItem;->_ColorNormal:Z

    return-void
.end method

.method public set_color(Ljava/lang/Integer;)V
    .locals 1

    if-nez p1, :cond_0

    .line 321
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->TextUnitStyle_None:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiMenuItem;->set_subTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/metamoji/ui/UiMenuItem;->_ColorEnable:Z

    .line 324
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/UiMenuItem;->_Color:I

    const/4 p1, 0x0

    .line 325
    iput-boolean p1, p0, Lcom/metamoji/ui/UiMenuItem;->_ColorNormal:Z

    return-void
.end method

.method public set_command(Ljava/lang/Object;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_command:Ljava/lang/Object;

    return-void
.end method

.method public set_enabled(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lcom/metamoji/ui/UiMenuItem;->_isEnabled:Z

    return-void
.end method

.method public set_haveSubMenu(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/metamoji/ui/UiMenuItem;->_haveSubMenu:Z

    return-void
.end method

.method public set_isSubMenu(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/metamoji/ui/UiMenuItem;->_isSubMenu:Z

    return-void
.end method

.method public set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_kind:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    return-void
.end method

.method public set_menus(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_menus:Ljava/util/ArrayList;

    return-void
.end method

.method public set_options(Ljava/lang/Object;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_options:Ljava/lang/Object;

    return-void
.end method

.method public set_subTitle(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_subTitle:Ljava/lang/String;

    return-void
.end method

.method public set_subTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/metamoji/ui/UiMenuItem;->_subTitleTypeface:Landroid/graphics/Typeface;

    return-void
.end method
