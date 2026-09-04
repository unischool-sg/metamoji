.class public final enum Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;
.super Ljava/lang/Enum;
.source "MediaChangedBroadcastContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/MediaChangedBroadcastContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

.field public static final enum MEDIA_CHANGED:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;
    .locals 1

    .line 5
    sget-object v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->MEDIA_CHANGED:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    filled-new-array {v0}, [Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    const-string v1, "MEDIA_CHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->MEDIA_CHANGED:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    .line 5
    invoke-static {}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->$values()[Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->$VALUES:[Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;
    .locals 1

    .line 5
    sget-object v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->$VALUES:[Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    invoke-virtual {v0}, [Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    return-object v0
.end method
