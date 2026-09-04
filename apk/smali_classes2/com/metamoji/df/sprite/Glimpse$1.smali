.class Lcom/metamoji/df/sprite/Glimpse$1;
.super Lcom/metamoji/df/sprite/Glimpse$Thumb;
.source "Glimpse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Glimpse;-><init>(Lcom/metamoji/df/sprite/TurnOverMediator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Glimpse;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Glimpse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/metamoji/df/sprite/Glimpse$1;->this$0:Lcom/metamoji/df/sprite/Glimpse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Glimpse$Thumb;-><init>(Lcom/metamoji/df/sprite/Glimpse-IA;)V

    return-void
.end method


# virtual methods
.method public relativeIndex()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
