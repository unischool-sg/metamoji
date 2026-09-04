.class synthetic Lcom/metamoji/df/controller/DfPageController$5;
.super Ljava/lang/Object;
.source "DfPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/DfPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$df$controller$ControllerContext$MediaType:[I

.field static final synthetic $SwitchMap$com$metamoji$df$controller$MediaChangedBroadcastContext$EventName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 783
    invoke-static {}, Lcom/metamoji/df/controller/ControllerContext$MediaType;->values()[Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$5;->$SwitchMap$com$metamoji$df$controller$ControllerContext$MediaType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/ControllerContext$MediaType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$5;->$SwitchMap$com$metamoji$df$controller$ControllerContext$MediaType:[I

    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/ControllerContext$MediaType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$5;->$SwitchMap$com$metamoji$df$controller$ControllerContext$MediaType:[I

    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_PRINT:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/ControllerContext$MediaType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 482
    :catch_2
    invoke-static {}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->values()[Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/df/controller/DfPageController$5;->$SwitchMap$com$metamoji$df$controller$MediaChangedBroadcastContext$EventName:[I

    :try_start_3
    sget-object v2, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->MEDIA_CHANGED:Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext$EventName;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
