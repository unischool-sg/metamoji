.class Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;
.super Ljava/lang/Object;
.source "NoteTemplateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/NoteTemplateSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectNoteHeader"
.end annotation


# static fields
.field public static final HEADER_TYPE:I = 0x0

.field public static final SEPARATOR_TYPE:I = 0x1


# instance fields
.field private _count:I

.field private _title:Ljava/lang/String;

.field private _type:I

.field final synthetic this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;->_type:I

    .line 127
    iput p3, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;->_count:I

    .line 128
    iput-object p4, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;->_title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;->_count:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteHeader;->_type:I

    return v0
.end method
