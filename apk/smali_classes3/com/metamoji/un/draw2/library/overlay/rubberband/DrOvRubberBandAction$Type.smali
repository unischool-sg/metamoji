.class public final enum Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;
.super Ljava/lang/Enum;
.source "DrOvRubberBandAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

.field public static final enum CANCELED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

.field public static final enum EXTRA_HANDLE_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

.field public static final enum FRAME_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

.field public static final enum FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

.field public static final enum FRAME_ROTATED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;
    .locals 5

    .line 21
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_ROTATED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    sget-object v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->EXTRA_HANDLE_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    const-string v1, "FRAME_MOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 23
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    const-string v1, "FRAME_RESIZED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_RESIZED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 24
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    const-string v1, "FRAME_ROTATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->FRAME_ROTATED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    const-string v1, "EXTRA_HANDLE_MOVED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->EXTRA_HANDLE_MOVED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    const-string v1, "CANCELED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    .line 21
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->$values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    const-class v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;
    .locals 1

    .line 21
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction$Type;

    return-object v0
.end method
