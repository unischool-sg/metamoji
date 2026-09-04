.class public final enum Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;
.super Ljava/lang/Enum;
.source "NtPDFImportOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPDFImportOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NtPDFImportOptionRotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

.field public static final enum NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

.field public static final enum NtPDFImportOptionRotation180:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

.field public static final enum NtPDFImportOptionRotation270:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

.field public static final enum NtPDFImportOptionRotation90:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;
    .locals 4

    .line 4
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    sget-object v1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation90:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    sget-object v2, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation180:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    sget-object v3, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation270:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    const-string v1, "NtPDFImportOptionRotation0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    .line 6
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    const-string v1, "NtPDFImportOptionRotation90"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation90:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    .line 7
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    const-string v1, "NtPDFImportOptionRotation180"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation180:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    .line 8
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    const-string v1, "NtPDFImportOptionRotation270"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation270:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    .line 4
    invoke-static {}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->$values()[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->$VALUES:[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

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

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;
    .locals 1

    .line 4
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->$VALUES:[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    return-object v0
.end method
