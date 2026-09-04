.class public interface abstract Lcom/metamoji/df/sprite/TouchListener;
.super Ljava/lang/Object;
.source "TouchListener.java"


# static fields
.field public static final Nil:Lcom/metamoji/df/sprite/TouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/metamoji/df/sprite/TouchListener$1;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/TouchListener$1;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/TouchListener;->Nil:Lcom/metamoji/df/sprite/TouchListener;

    return-void
.end method


# virtual methods
.method public abstract touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method

.method public abstract touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method

.method public abstract touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method

.method public abstract touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method
