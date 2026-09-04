.class public final enum Lcom/metamoji/ex/SendDialog$User;
.super Ljava/lang/Enum;
.source "SendDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ex/SendDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ex/SendDialog$User;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ex/SendDialog$User;

.field public static final enum All:Lcom/metamoji/ex/SendDialog$User;

.field public static final enum Current:Lcom/metamoji/ex/SendDialog$User;

.field public static final enum Selected:Lcom/metamoji/ex/SendDialog$User;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ex/SendDialog$User;
    .locals 3

    .line 99
    sget-object v0, Lcom/metamoji/ex/SendDialog$User;->Current:Lcom/metamoji/ex/SendDialog$User;

    sget-object v1, Lcom/metamoji/ex/SendDialog$User;->All:Lcom/metamoji/ex/SendDialog$User;

    sget-object v2, Lcom/metamoji/ex/SendDialog$User;->Selected:Lcom/metamoji/ex/SendDialog$User;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ex/SendDialog$User;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 101
    new-instance v0, Lcom/metamoji/ex/SendDialog$User;

    const-string v1, "Current"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ex/SendDialog$User;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$User;->Current:Lcom/metamoji/ex/SendDialog$User;

    .line 102
    new-instance v0, Lcom/metamoji/ex/SendDialog$User;

    const-string v1, "All"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ex/SendDialog$User;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$User;->All:Lcom/metamoji/ex/SendDialog$User;

    .line 103
    new-instance v0, Lcom/metamoji/ex/SendDialog$User;

    const-string v1, "Selected"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ex/SendDialog$User;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$User;->Selected:Lcom/metamoji/ex/SendDialog$User;

    .line 99
    invoke-static {}, Lcom/metamoji/ex/SendDialog$User;->$values()[Lcom/metamoji/ex/SendDialog$User;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ex/SendDialog$User;->$VALUES:[Lcom/metamoji/ex/SendDialog$User;

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

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ex/SendDialog$User;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    const-class v0, Lcom/metamoji/ex/SendDialog$User;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ex/SendDialog$User;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ex/SendDialog$User;
    .locals 1

    .line 99
    sget-object v0, Lcom/metamoji/ex/SendDialog$User;->$VALUES:[Lcom/metamoji/ex/SendDialog$User;

    invoke-virtual {v0}, [Lcom/metamoji/ex/SendDialog$User;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ex/SendDialog$User;

    return-object v0
.end method
