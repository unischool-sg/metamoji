.class final Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;
.super Ljava/lang/Object;
.source "KeyboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/KeyboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyCombination"
.end annotation


# instance fields
.field private final mKeyCode:I

.field private final mMetaState:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mKeyCode:I

    .line 130
    iput p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mMetaState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 135
    instance-of v0, p1, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;

    .line 137
    iget v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mKeyCode:I

    iget v2, p1, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mKeyCode:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mMetaState:I

    iget p1, p1, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mMetaState:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 145
    iget v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mKeyCode:I

    iget v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;->mMetaState:I

    xor-int/2addr v0, v1

    return v0
.end method
