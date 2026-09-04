.class public final enum Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;
.super Ljava/lang/Enum;
.source "DrOvRubberBandHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FunctionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum EXTRA_HANDLE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum MOVE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum RESIZE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum RESIZE_X:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum RESIZE_Y:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum SCALE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

.field public static final enum STEP_ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;
    .locals 9

    .line 53
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->MOVE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE_X:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE_Y:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->SCALE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v6, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v7, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->STEP_ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    sget-object v8, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->EXTRA_HANDLE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 55
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "MOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->MOVE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 56
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "RESIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 57
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "RESIZE_X"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE_X:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 58
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "RESIZE_Y"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->RESIZE_Y:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 59
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "SCALE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->SCALE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 60
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "ROTATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 61
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "STEP_ROTATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->STEP_ROTATE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 62
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    const-string v1, "EXTRA_HANDLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->EXTRA_HANDLE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    .line 53
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->$values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    const-class v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;
    .locals 1

    .line 53
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    return-object v0
.end method
