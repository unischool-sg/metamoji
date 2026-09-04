.class final enum Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;
.super Ljava/lang/Enum;
.source "HoverSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/HoverSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HoverSelectorUnitViewStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

.field public static final enum CURVE_BAR:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

.field public static final enum VERTICAL_BAR_LEFT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

.field public static final enum VERTICAL_BAR_RIGHT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;
    .locals 3

    .line 115
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->CURVE_BAR:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    sget-object v1, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->VERTICAL_BAR_LEFT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    sget-object v2, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->VERTICAL_BAR_RIGHT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 116
    new-instance v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    const-string v1, "CURVE_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->CURVE_BAR:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    new-instance v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    const-string v1, "VERTICAL_BAR_LEFT_SIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->VERTICAL_BAR_LEFT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    new-instance v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    const-string v1, "VERTICAL_BAR_RIGHT_SIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->VERTICAL_BAR_RIGHT_SIDE:Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    .line 115
    invoke-static {}, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->$values()[Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->$VALUES:[Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 115
    const-class v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;
    .locals 1

    .line 115
    sget-object v0, Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->$VALUES:[Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    invoke-virtual {v0}, [Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/HoverSelectorView$HoverSelectorUnitViewStyle;

    return-object v0
.end method
