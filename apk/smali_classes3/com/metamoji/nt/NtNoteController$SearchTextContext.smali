.class Lcom/metamoji/nt/NtNoteController$SearchTextContext;
.super Ljava/lang/Object;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchTextContext"
.end annotation


# instance fields
.field public cancelEnd:Z

.field public findModel:Z

.field public resultModel:Lcom/metamoji/df/model/IModel;

.field public resultRange:Lcom/metamoji/nt/NtTextSearchPosition;

.field public searchFromModel:Lcom/metamoji/df/model/IModel;

.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7019
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
