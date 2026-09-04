.class public final enum Lcom/metamoji/ex/SendDialog$Page;
.super Ljava/lang/Enum;
.source "SendDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ex/SendDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ex/SendDialog$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ex/SendDialog$Page;

.field public static final enum All:Lcom/metamoji/ex/SendDialog$Page;

.field public static final enum Current:Lcom/metamoji/ex/SendDialog$Page;

.field public static final enum Selected:Lcom/metamoji/ex/SendDialog$Page;

.field public static final enum SelectedArea:Lcom/metamoji/ex/SendDialog$Page;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ex/SendDialog$Page;
    .locals 4

    .line 91
    sget-object v0, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    sget-object v1, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    sget-object v2, Lcom/metamoji/ex/SendDialog$Page;->Selected:Lcom/metamoji/ex/SendDialog$Page;

    sget-object v3, Lcom/metamoji/ex/SendDialog$Page;->SelectedArea:Lcom/metamoji/ex/SendDialog$Page;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/ex/SendDialog$Page;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 92
    new-instance v0, Lcom/metamoji/ex/SendDialog$Page;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ex/SendDialog$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Page;->All:Lcom/metamoji/ex/SendDialog$Page;

    .line 93
    new-instance v0, Lcom/metamoji/ex/SendDialog$Page;

    const-string v1, "Current"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ex/SendDialog$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Page;->Current:Lcom/metamoji/ex/SendDialog$Page;

    .line 94
    new-instance v0, Lcom/metamoji/ex/SendDialog$Page;

    const-string v1, "Selected"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ex/SendDialog$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Page;->Selected:Lcom/metamoji/ex/SendDialog$Page;

    .line 95
    new-instance v0, Lcom/metamoji/ex/SendDialog$Page;

    const-string v1, "SelectedArea"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ex/SendDialog$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Page;->SelectedArea:Lcom/metamoji/ex/SendDialog$Page;

    .line 91
    invoke-static {}, Lcom/metamoji/ex/SendDialog$Page;->$values()[Lcom/metamoji/ex/SendDialog$Page;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ex/SendDialog$Page;->$VALUES:[Lcom/metamoji/ex/SendDialog$Page;

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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ex/SendDialog$Page;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    const-class v0, Lcom/metamoji/ex/SendDialog$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ex/SendDialog$Page;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ex/SendDialog$Page;
    .locals 1

    .line 91
    sget-object v0, Lcom/metamoji/ex/SendDialog$Page;->$VALUES:[Lcom/metamoji/ex/SendDialog$Page;

    invoke-virtual {v0}, [Lcom/metamoji/ex/SendDialog$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ex/SendDialog$Page;

    return-object v0
.end method
