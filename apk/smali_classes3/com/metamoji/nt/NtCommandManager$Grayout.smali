.class public final enum Lcom/metamoji/nt/NtCommandManager$Grayout;
.super Ljava/lang/Enum;
.source "NtCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Grayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtCommandManager$Grayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtCommandManager$Grayout;

.field public static final enum AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

.field public static final enum DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

.field public static final enum ENABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtCommandManager$Grayout;
    .locals 3

    .line 98
    sget-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->ENABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/nt/NtCommandManager$Grayout;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 99
    new-instance v0, Lcom/metamoji/nt/NtCommandManager$Grayout;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager$Grayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    .line 100
    new-instance v0, Lcom/metamoji/nt/NtCommandManager$Grayout;

    const-string v1, "DISABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager$Grayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    .line 101
    new-instance v0, Lcom/metamoji/nt/NtCommandManager$Grayout;

    const-string v1, "ENABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager$Grayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->ENABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    .line 98
    invoke-static {}, Lcom/metamoji/nt/NtCommandManager$Grayout;->$values()[Lcom/metamoji/nt/NtCommandManager$Grayout;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->$VALUES:[Lcom/metamoji/nt/NtCommandManager$Grayout;

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

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtCommandManager$Grayout;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 98
    const-class v0, Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtCommandManager$Grayout;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtCommandManager$Grayout;
    .locals 1

    .line 98
    sget-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->$VALUES:[Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtCommandManager$Grayout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtCommandManager$Grayout;

    return-object v0
.end method
