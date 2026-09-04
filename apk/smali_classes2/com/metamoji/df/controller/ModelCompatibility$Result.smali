.class public final enum Lcom/metamoji/df/controller/ModelCompatibility$Result;
.super Ljava/lang/Enum;
.source "ModelCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/ModelCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/controller/ModelCompatibility$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/controller/ModelCompatibility$Result;

.field public static final enum CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

.field public static final enum Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

.field public static final enum NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/controller/ModelCompatibility$Result;
    .locals 3

    .line 17
    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v2, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/df/controller/ModelCompatibility$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;

    const-string v1, "Compatible"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/ModelCompatibility$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    .line 31
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;

    const-string v1, "NeedConvert"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/ModelCompatibility$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    .line 36
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;

    const-string v1, "CantRead"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/ModelCompatibility$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    .line 17
    invoke-static {}, Lcom/metamoji/df/controller/ModelCompatibility$Result;->$values()[Lcom/metamoji/df/controller/ModelCompatibility$Result;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->$VALUES:[Lcom/metamoji/df/controller/ModelCompatibility$Result;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/controller/ModelCompatibility$Result;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    const-class v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/controller/ModelCompatibility$Result;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/controller/ModelCompatibility$Result;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->$VALUES:[Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-virtual {v0}, [Lcom/metamoji/df/controller/ModelCompatibility$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/controller/ModelCompatibility$Result;

    return-object v0
.end method
