.class public final enum Lcom/metamoji/ui/UiMenuItem$MenuKind;
.super Ljava/lang/Enum;
.source "UiMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/UiMenuItem$MenuKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum CUSTOM_VIEW:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum F_MODES:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum F_TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum UNDO_REDO_COMB:Lcom/metamoji/ui/UiMenuItem$MenuKind;

.field public static final enum VERSION_INFO:Lcom/metamoji/ui/UiMenuItem$MenuKind;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/UiMenuItem$MenuKind;
    .locals 9

    .line 15
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v1, Lcom/metamoji/ui/UiMenuItem$MenuKind;->TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v2, Lcom/metamoji/ui/UiMenuItem$MenuKind;->VERSION_INFO:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->CUSTOM_VIEW:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MenuKind;->UNDO_REDO_COMB:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v6, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_MODES:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v7, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    sget-object v8, Lcom/metamoji/ui/UiMenuItem$MenuKind;->SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 17
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "TOOLS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 18
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "VERSION_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->VERSION_INFO:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 19
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "CUSTOM_VIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->CUSTOM_VIEW:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 20
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "UNDO_REDO_COMB"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->UNDO_REDO_COMB:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 21
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "F_TOOLS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 22
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "F_MODES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_MODES:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 23
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "HASCHECK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 24
    new-instance v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    const-string v1, "SEPARATOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/UiMenuItem$MenuKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    .line 15
    invoke-static {}, Lcom/metamoji/ui/UiMenuItem$MenuKind;->$values()[Lcom/metamoji/ui/UiMenuItem$MenuKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->$VALUES:[Lcom/metamoji/ui/UiMenuItem$MenuKind;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/UiMenuItem$MenuKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    const-class v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/UiMenuItem$MenuKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/UiMenuItem$MenuKind;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/ui/UiMenuItem$MenuKind;->$VALUES:[Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v0}, [Lcom/metamoji/ui/UiMenuItem$MenuKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/UiMenuItem$MenuKind;

    return-object v0
.end method
