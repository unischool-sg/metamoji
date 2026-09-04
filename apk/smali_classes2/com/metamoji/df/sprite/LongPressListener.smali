.class public interface abstract Lcom/metamoji/df/sprite/LongPressListener;
.super Ljava/lang/Object;
.source "LongPressListener.java"


# static fields
.field public static final Nil:Lcom/metamoji/df/sprite/LongPressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/metamoji/df/sprite/LongPressListener$1;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/LongPressListener$1;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/LongPressListener;->Nil:Lcom/metamoji/df/sprite/LongPressListener;

    return-void
.end method


# virtual methods
.method public abstract longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method

.method public abstract longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method

.method public abstract longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method

.method public abstract longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method
