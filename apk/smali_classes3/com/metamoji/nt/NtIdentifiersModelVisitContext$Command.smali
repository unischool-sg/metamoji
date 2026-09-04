.class public final enum Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;
.super Ljava/lang/Enum;
.source "NtIdentifiersModelVisitContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtIdentifiersModelVisitContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

.field public static final enum CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

.field public static final enum RenewID:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

.field public static final enum RenewIDForInvalidUnitId:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

.field public static final enum RenewIDForSchool:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

.field public static final enum SearchModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;
    .locals 5

    .line 16
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewID:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    sget-object v1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    sget-object v2, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->SearchModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    sget-object v3, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForSchool:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    sget-object v4, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForInvalidUnitId:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    const-string v1, "RenewID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewID:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    .line 18
    new-instance v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    const-string v1, "CollectModel"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    .line 19
    new-instance v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    const-string v1, "SearchModel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->SearchModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    .line 21
    new-instance v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    const-string v1, "RenewIDForSchool"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForSchool:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    .line 22
    new-instance v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    const-string v1, "RenewIDForInvalidUnitId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForInvalidUnitId:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    .line 16
    invoke-static {}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->$values()[Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->$VALUES:[Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    const-class v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->$VALUES:[Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    return-object v0
.end method
