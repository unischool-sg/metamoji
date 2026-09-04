.class public final enum Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;
.super Ljava/lang/Enum;
.source "UiMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MMJUIMenuCheckState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

.field public static final enum MMJUI_MENU_CHECKSTATE_HIDDEN:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

.field public static final enum MMJUI_MENU_CHECKSTATE_INDENT:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

.field public static final enum MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

.field public static final enum MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

.field public static final enum MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;
    .locals 5

    .line 27
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_HIDDEN:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_INDENT:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    const/4 v1, -0x2

    const-string v2, "MMJUI_MENU_CHECKSTATE_HIDDEN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_HIDDEN:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 29
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    const/4 v1, -0x1

    const-string v2, "MMJUI_MENU_CHECKSTATE_INDENT"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_INDENT:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 30
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    const-string v1, "MMJUI_MENU_CHECKSTATE_OFF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 31
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    const-string v1, "MMJUI_MENU_CHECKSTATE_ON"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 32
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    const-string v1, "MMJUI_MENU_CHECKSTATE_NONE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 27
    invoke-static {}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->$values()[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->$VALUES:[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->_value:I

    return-void
.end method

.method public static fromValue(I)Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;
    .locals 6

    .line 41
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_NONE:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    .line 42
    invoke-static {}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->values()[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 43
    invoke-virtual {v4}, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->toValue()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    const-class v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->$VALUES:[Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    invoke-virtual {v0}, [Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->_value:I

    return v0
.end method
