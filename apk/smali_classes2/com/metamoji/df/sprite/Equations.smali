.class public interface abstract Lcom/metamoji/df/sprite/Equations;
.super Ljava/lang/Object;
.source "Equations.java"


# static fields
.field public static final easeNone:Lcom/metamoji/df/sprite/Equations;

.field public static final easeOutQuad:Lcom/metamoji/df/sprite/Equations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/metamoji/df/sprite/Equations$1;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Equations$1;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/Equations;->easeNone:Lcom/metamoji/df/sprite/Equations;

    .line 33
    new-instance v0, Lcom/metamoji/df/sprite/Equations$2;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Equations$2;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/Equations;->easeOutQuad:Lcom/metamoji/df/sprite/Equations;

    return-void
.end method


# virtual methods
.method public abstract f(FFFF)F
.end method
