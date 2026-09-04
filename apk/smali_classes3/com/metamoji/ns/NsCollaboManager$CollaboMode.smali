.class public final enum Lcom/metamoji/ns/NsCollaboManager$CollaboMode;
.super Ljava/lang/Enum;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollaboMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ns/NsCollaboManager$CollaboMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

.field public static final enum COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

.field public static final enum OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

.field public static final enum PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ns/NsCollaboManager$CollaboMode;
    .locals 3

    .line 70
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    const-string v1, "COLLABO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 72
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    const-string v1, "PRIVATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 74
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    const-string v1, "OFFLINE_EDIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 70
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->$values()[Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->$VALUES:[Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

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

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboManager$CollaboMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 70
    const-class v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ns/NsCollaboManager$CollaboMode;
    .locals 1

    .line 70
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->$VALUES:[Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v0}, [Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    return-object v0
.end method
