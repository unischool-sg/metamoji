.class public final enum Lcom/metamoji/df/controller/PageEventContext$Kind;
.super Ljava/lang/Enum;
.source "PageEventContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/PageEventContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/controller/PageEventContext$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/controller/PageEventContext$Kind;

.field public static final enum CurrentPageChanged:Lcom/metamoji/df/controller/PageEventContext$Kind;

.field public static final enum Deleted:Lcom/metamoji/df/controller/PageEventContext$Kind;

.field public static final enum Inserted:Lcom/metamoji/df/controller/PageEventContext$Kind;

.field public static final enum Moved:Lcom/metamoji/df/controller/PageEventContext$Kind;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/controller/PageEventContext$Kind;
    .locals 4

    .line 15
    sget-object v0, Lcom/metamoji/df/controller/PageEventContext$Kind;->Inserted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    sget-object v1, Lcom/metamoji/df/controller/PageEventContext$Kind;->Deleted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    sget-object v2, Lcom/metamoji/df/controller/PageEventContext$Kind;->Moved:Lcom/metamoji/df/controller/PageEventContext$Kind;

    sget-object v3, Lcom/metamoji/df/controller/PageEventContext$Kind;->CurrentPageChanged:Lcom/metamoji/df/controller/PageEventContext$Kind;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/df/controller/PageEventContext$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext$Kind;

    const-string v1, "Inserted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/PageEventContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/PageEventContext$Kind;->Inserted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    .line 17
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext$Kind;

    const-string v1, "Deleted"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/PageEventContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/PageEventContext$Kind;->Deleted:Lcom/metamoji/df/controller/PageEventContext$Kind;

    .line 18
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext$Kind;

    const-string v1, "Moved"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/PageEventContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/PageEventContext$Kind;->Moved:Lcom/metamoji/df/controller/PageEventContext$Kind;

    .line 19
    new-instance v0, Lcom/metamoji/df/controller/PageEventContext$Kind;

    const-string v1, "CurrentPageChanged"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/PageEventContext$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/PageEventContext$Kind;->CurrentPageChanged:Lcom/metamoji/df/controller/PageEventContext$Kind;

    .line 15
    invoke-static {}, Lcom/metamoji/df/controller/PageEventContext$Kind;->$values()[Lcom/metamoji/df/controller/PageEventContext$Kind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/controller/PageEventContext$Kind;->$VALUES:[Lcom/metamoji/df/controller/PageEventContext$Kind;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/controller/PageEventContext$Kind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    const-class v0, Lcom/metamoji/df/controller/PageEventContext$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/controller/PageEventContext$Kind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/controller/PageEventContext$Kind;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/df/controller/PageEventContext$Kind;->$VALUES:[Lcom/metamoji/df/controller/PageEventContext$Kind;

    invoke-virtual {v0}, [Lcom/metamoji/df/controller/PageEventContext$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/controller/PageEventContext$Kind;

    return-object v0
.end method
