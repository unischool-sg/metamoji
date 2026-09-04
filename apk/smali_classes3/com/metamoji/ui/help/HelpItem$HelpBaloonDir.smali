.class final enum Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;
.super Ljava/lang/Enum;
.source "HelpItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/help/HelpItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HelpBaloonDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

.field public static final enum H_B_DW:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

.field public static final enum H_B_LT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

.field public static final enum H_B_RT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

.field public static final enum H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;
    .locals 4

    .line 64
    sget-object v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    sget-object v1, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_DW:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    sget-object v2, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_LT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    sget-object v3, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_RT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    const-string v1, "H_B_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_UP:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    .line 66
    new-instance v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    const-string v1, "H_B_DW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_DW:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    .line 67
    new-instance v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    const-string v1, "H_B_LT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_LT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    .line 68
    new-instance v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    const-string v1, "H_B_RT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->H_B_RT:Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    .line 64
    invoke-static {}, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->$values()[Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->$VALUES:[Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 64
    const-class v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;
    .locals 1

    .line 64
    sget-object v0, Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->$VALUES:[Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    invoke-virtual {v0}, [Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/help/HelpItem$HelpBaloonDir;

    return-object v0
.end method
