.class synthetic Lcom/metamoji/ui/menu/MenuUtils$1;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/menu/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

.field static final synthetic $SwitchMap$com$metamoji$ui$UiMenuItem$MMJUIMenuCheckState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 525
    invoke-static {}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->values()[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$UiMenuItem$MMJUIMenuCheckState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v2}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$UiMenuItem$MMJUIMenuCheckState:[I

    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v3}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$UiMenuItem$MMJUIMenuCheckState:[I

    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 425
    :catch_2
    invoke-static {}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->values()[Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    :try_start_3
    sget-object v4, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v4}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_BOTH_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v3}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_LEFT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_RIGHT_ROUND:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_MORE:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->CTX_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_NORMAL:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASSUBMENUS:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_SUBMENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->UNDO_REDO_COMBO_MENU:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/metamoji/ui/menu/MenuUtils$1;->$SwitchMap$com$metamoji$ui$CustomMenuView$MMJUIMenuStyle:[I

    sget-object v1, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ACTION_HASCHECK:Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView$MMJUIMenuStyle;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
