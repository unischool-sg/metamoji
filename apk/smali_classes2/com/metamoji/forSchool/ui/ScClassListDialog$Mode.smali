.class public final enum Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;
.super Ljava/lang/Enum;
.source "ScClassListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

.field public static final enum AddMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

.field public static final enum ManageMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

.field public static final enum SelectMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;
    .locals 3

    .line 48
    sget-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->ManageMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    sget-object v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->SelectMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    sget-object v2, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->AddMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    const-string v1, "ManageMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->ManageMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    .line 50
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    const-string v1, "SelectMode"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->SelectMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    .line 51
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    const-string v1, "AddMode"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->AddMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    .line 48
    invoke-static {}, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->$values()[Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->$VALUES:[Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static toInt(Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;)I
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method static toMode(I)Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 61
    sget-object p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->ManageMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    return-object p0

    .line 58
    :cond_0
    sget-object p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->AddMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    return-object p0

    .line 56
    :cond_1
    sget-object p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->SelectMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 48
    const-class v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;
    .locals 1

    .line 48
    sget-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->$VALUES:[Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    invoke-virtual {v0}, [Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    return-object v0
.end method
