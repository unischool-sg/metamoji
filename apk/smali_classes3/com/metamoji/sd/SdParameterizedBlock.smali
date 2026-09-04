.class public abstract Lcom/metamoji/sd/SdParameterizedBlock;
.super Ljava/lang/Object;
.source "SdParameterizedBlock.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/sd/SdBlock<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private m_argument:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/metamoji/sd/SdParameterizedBlock;->m_argument:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgument()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/metamoji/sd/SdParameterizedBlock;->m_argument:Ljava/lang/Object;

    return-object v0
.end method

.method public setArgument(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/metamoji/sd/SdParameterizedBlock;->m_argument:Ljava/lang/Object;

    return-void
.end method
