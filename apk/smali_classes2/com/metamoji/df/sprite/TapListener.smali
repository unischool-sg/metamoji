.class public interface abstract Lcom/metamoji/df/sprite/TapListener;
.super Ljava/lang/Object;
.source "TapListener.java"


# static fields
.field public static final Nil:Lcom/metamoji/df/sprite/TapListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/metamoji/df/sprite/TapListener$1;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/TapListener$1;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/TapListener;->Nil:Lcom/metamoji/df/sprite/TapListener;

    return-void
.end method


# virtual methods
.method public abstract tap(Lcom/metamoji/df/sprite/TouchEvent;)V
.end method
