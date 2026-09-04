.class public Lcom/metamoji/nt/NtNoteController$SchoolPersonalModeTypeValue;
.super Ljava/lang/Object;
.source "NtNoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtNoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchoolPersonalModeTypeValue"
.end annotation


# static fields
.field public static final TEACHER_AND_READ_ONLY_STUDENT:I = 0x2

.field public static final TEACHER_AND_STUDENT:I = 0x1

.field public static final TEACHER_ONLY:I


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$SchoolPersonalModeTypeValue;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
