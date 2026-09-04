.class public interface abstract Lcom/metamoji/df/sprite/TouchEvent;
.super Ljava/lang/Object;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/TouchEvent$OnMotion;,
        Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;,
        Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;,
        Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;,
        Lcom/metamoji/df/sprite/TouchEvent$OnPoint;
    }
.end annotation


# static fields
.field public static final MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

.field public static final WithHistory:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;

.field public static final WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/TouchEvent;->MOTION:Lcom/metamoji/df/sprite/TouchEvent$OnMotion;

    .line 155
    new-instance v0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/TouchEvent;->WithID:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;

    .line 219
    new-instance v0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/TouchEvent;->WithHistory:Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;

    return-void
.end method


# virtual methods
.method public abstract doubleTapped()Z
.end method

.method public abstract getButtonState()I
.end method

.method public abstract getEventTime()J
.end method

.method public abstract getPoint()Landroid/graphics/PointF;
.end method

.method public abstract getPointer(I)Landroid/graphics/PointF;
.end method

.method public abstract getPointerCount()I
.end method

.method public abstract getPointerId(I)I
.end method

.method public abstract getX()F
.end method

.method public abstract getY()F
.end method

.method public abstract indexOf(I)I
.end method

.method public abstract isHistorical()Z
.end method
