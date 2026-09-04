.class public final enum Lcom/metamoji/cm/CmUtils$CreationOption;
.super Ljava/lang/Enum;
.source "CmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cm/CmUtils$CreationOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cm/CmUtils$CreationOption;

.field public static final enum ERROR_ON_EXISTS:Lcom/metamoji/cm/CmUtils$CreationOption;

.field public static final enum IGNORE:Lcom/metamoji/cm/CmUtils$CreationOption;

.field public static final enum REMOVE_EXISTING:Lcom/metamoji/cm/CmUtils$CreationOption;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cm/CmUtils$CreationOption;
    .locals 3

    .line 693
    sget-object v0, Lcom/metamoji/cm/CmUtils$CreationOption;->IGNORE:Lcom/metamoji/cm/CmUtils$CreationOption;

    sget-object v1, Lcom/metamoji/cm/CmUtils$CreationOption;->REMOVE_EXISTING:Lcom/metamoji/cm/CmUtils$CreationOption;

    sget-object v2, Lcom/metamoji/cm/CmUtils$CreationOption;->ERROR_ON_EXISTS:Lcom/metamoji/cm/CmUtils$CreationOption;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/cm/CmUtils$CreationOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 694
    new-instance v0, Lcom/metamoji/cm/CmUtils$CreationOption;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmUtils$CreationOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/CmUtils$CreationOption;->IGNORE:Lcom/metamoji/cm/CmUtils$CreationOption;

    .line 695
    new-instance v0, Lcom/metamoji/cm/CmUtils$CreationOption;

    const-string v1, "REMOVE_EXISTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmUtils$CreationOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/CmUtils$CreationOption;->REMOVE_EXISTING:Lcom/metamoji/cm/CmUtils$CreationOption;

    .line 696
    new-instance v0, Lcom/metamoji/cm/CmUtils$CreationOption;

    const-string v1, "ERROR_ON_EXISTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmUtils$CreationOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/CmUtils$CreationOption;->ERROR_ON_EXISTS:Lcom/metamoji/cm/CmUtils$CreationOption;

    .line 693
    invoke-static {}, Lcom/metamoji/cm/CmUtils$CreationOption;->$values()[Lcom/metamoji/cm/CmUtils$CreationOption;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cm/CmUtils$CreationOption;->$VALUES:[Lcom/metamoji/cm/CmUtils$CreationOption;

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

    .line 693
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cm/CmUtils$CreationOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 693
    const-class v0, Lcom/metamoji/cm/CmUtils$CreationOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cm/CmUtils$CreationOption;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cm/CmUtils$CreationOption;
    .locals 1

    .line 693
    sget-object v0, Lcom/metamoji/cm/CmUtils$CreationOption;->$VALUES:[Lcom/metamoji/cm/CmUtils$CreationOption;

    invoke-virtual {v0}, [Lcom/metamoji/cm/CmUtils$CreationOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cm/CmUtils$CreationOption;

    return-object v0
.end method
