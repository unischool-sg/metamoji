.class public final enum Lcom/metamoji/nt/NtToolChangedContext$Kind;
.super Ljava/lang/Enum;
.source "NtToolChangedContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtToolChangedContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtToolChangedContext$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtToolChangedContext$Kind;

.field public static final enum EraserIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

.field public static final enum EraserSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

.field public static final enum PenIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

.field public static final enum PenSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtToolChangedContext$Kind;
    .locals 4

    .line 11
    sget-object v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    sget-object v1, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    sget-object v2, Lcom/metamoji/nt/NtToolChangedContext$Kind;->EraserSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    sget-object v3, Lcom/metamoji/nt/NtToolChangedContext$Kind;->EraserIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/nt/NtToolChangedContext$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;

    const-string v1, "PenSettings"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtToolChangedContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    .line 13
    new-instance v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;

    const-string v1, "PenIndex"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtToolChangedContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;->PenIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    .line 14
    new-instance v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;

    const-string v1, "EraserSettings"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtToolChangedContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;->EraserSettings:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    .line 15
    new-instance v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;

    const-string v1, "EraserIndex"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtToolChangedContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;->EraserIndex:Lcom/metamoji/nt/NtToolChangedContext$Kind;

    .line 11
    invoke-static {}, Lcom/metamoji/nt/NtToolChangedContext$Kind;->$values()[Lcom/metamoji/nt/NtToolChangedContext$Kind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;->$VALUES:[Lcom/metamoji/nt/NtToolChangedContext$Kind;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtToolChangedContext$Kind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtToolChangedContext$Kind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtToolChangedContext$Kind;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/nt/NtToolChangedContext$Kind;->$VALUES:[Lcom/metamoji/nt/NtToolChangedContext$Kind;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtToolChangedContext$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtToolChangedContext$Kind;

    return-object v0
.end method
