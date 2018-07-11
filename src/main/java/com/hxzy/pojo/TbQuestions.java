package com.hxzy.pojo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class TbQuestions {
    private Integer id;

    private String subject;

    private String type;

    private Date jointime;

    private Integer lessonid;

    private Integer taotiid;

    private String optiona;

    private String optionb;

    private String optionc;

    private String optiond;

    private String answer;

    private String note;
    
  private TbTaoti taoti;
    
    private TbLesson lesson;
    
    private TbTaoti tbtaoti;
    
    public TbTaoti getTbtaoti() {
		return tbtaoti;
	}

	public void setTbtaoti(TbTaoti tbtaoti) {
		this.tbtaoti = tbtaoti;
	}

	public TbTaoti getTaoti() {
		return taoti;
	}

	public void setTaoti(TbTaoti taoti) {
		this.taoti = taoti;
	}

	public TbLesson getLesson() {
		return lesson;
	}

	public void setLesson(TbLesson lesson) {
		this.lesson = lesson;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject == null ? null : subject.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getJointime() {
        return jointime;
    }

    public void setJointime(Date jointime) {
        this.jointime = jointime;
    }

    public Integer getLessonid() {
        return lessonid;
    }

    public void setLessonid(Integer lessonid) {
        this.lessonid = lessonid;
    }

    public Integer getTaotiid() {
        return taotiid;
    }

    public void setTaotiid(Integer taotiid) {
        this.taotiid = taotiid;
    }

    public String getOptiona() {
        return optiona;
    }

    public void setOptiona(String optiona) {
        this.optiona = optiona == null ? null : optiona.trim();
    }

    public String getOptionb() {
        return optionb;
    }

    public void setOptionb(String optionb) {
        this.optionb = optionb == null ? null : optionb.trim();
    }

    public String getOptionc() {
        return optionc;
    }

    public void setOptionc(String optionc) {
        this.optionc = optionc == null ? null : optionc.trim();
    }

    public String getOptiond() {
        return optiond;
    }

    public void setOptiond(String optiond) {
        this.optiond = optiond == null ? null : optiond.trim();
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer == null ? null : answer.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

	@Override
	public String toString() {
		return "TbQuestions [id=" + id + ", subject=" + subject + ", type=" + type + ", jointime=" + jointime
				+ ", lessonid=" + lessonid + ", taotiid=" + taotiid + ", optiona=" + optiona + ", optionb=" + optionb
				+ ", optionc=" + optionc + ", optiond=" + optiond + ", answer=" + answer + ", note=" + note + ", taoti="
				+ taoti + ", lesson=" + lesson + ", tbtaoti=" + tbtaoti + "]";
	}
    
}