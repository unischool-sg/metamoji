.class Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;
.super Ljava/lang/Object;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewSizeChangedArg"
.end annotation


# instance fields
.field public h:I

.field public oldh:I

.field public oldw:I

.field public w:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 3922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3923
    iput p1, p0, Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;->w:I

    .line 3924
    iput p2, p0, Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;->h:I

    .line 3925
    iput p3, p0, Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;->oldw:I

    .line 3926
    iput p4, p0, Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;->oldh:I

    return-void
.end method
